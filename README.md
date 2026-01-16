# LostAndFound


import { TestBed } from '@angular/core/testing';

describe('MyService', () => {
  // 1. Keep a reference to the original for restoration
  const originalLocation = window.location;
  let urlStore = 'http://localhost/';

  // 2. Define spies to track calls
  const setHrefSpy = jest.fn((val: string) => { urlStore = val; });
  const getHrefSpy = jest.fn(() => urlStore);

  beforeAll(() => {
    // 3. Clear existing non-configurable property by redefining window.location
    // Use Object.defineProperty to bypass JSDOM's internal restrictions
    Object.defineProperty(window, 'location', {
      configurable: true,
      enumerable: true,
      get: () => ({
        ...originalLocation, // Spread original to keep methods like .reload()
        get href() { return getHrefSpy(); },
        set href(v: string) { setHrefSpy(v); },
        // Add other mockable methods if needed
        assign: jest.fn(),
        replace: jest.fn(),
      })
    });
  });

  afterAll(() => {
    // 4. Restore original state
    Object.defineProperty(window, 'location', {
      configurable: true,
      value: originalLocation,
    });
  });

  it('should track when Angular code sets window.location.href', () => {
    // Arrange: Mock the getter/setter for this specific test
    const newUrl = 'https://google.com';
    
    // Act: Simulate app logic that sets href
    window.location.href = newUrl;

    // Assert: Verify the spy was called with the correct value
    expect(setHrefSpy).toHaveBeenCalledWith(newUrl);
    expect(window.location.href).toBe(newUrl);
  });
});

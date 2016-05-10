//http://techbrij.com/angularjs-cascade-dropdownlist-asp-net-mvc
var app = angular.module('app', []);
app.controller('CountryController', function ($scope, $http) {
    $scope.CountryList = [];
    $scope.showOtherCity = false;
    var theUrl = "api/LostAndFound/GetAllCountries?enumData={0}&ID={1}";
    $http.get(String.format(theUrl, 0, 0))//get ALL Countries
        .then(function (result) {
            $scope.CountryList = JSON.parse(result.data);
        });


    //$scope.CountryList = [{ "id": 1, 'CountryName': 'India' }, { "id": 2, 'CountryName': 'USA' }];
    $scope.$watch('country', function (val) {
        if (val) {
            $http.get(String.format(theUrl, 1, val))//get ALL state
           .then(function (result) {
               $scope.StateList = JSON.parse(result.data);
           });
        }
    });
    $scope.$watch('state', function (val) {
        if (val) {
            $http.get(String.format(theUrl, 2, val))//get ALL state
           .then(function (result) {
               $scope.CityList = JSON.parse(result.data);
           });
        }
    });
    $scope.$watch('city', function (newVal) {
        $scope.showOtherCity = false;
        if (newVal && newVal == '-1') {
            $scope.showOtherCity = true;
        }
    });

    //$scope.GetStates = function () {
    //    debugger;
    //    var countryId = $scope.country;
    //    if (countryId) {
    //        $http({
    //            method: 'POST',
    //            url: '/Home/GetStates/',
    //            data: JSON.stringify({ countryId: countryId })
    //        }).success(function (data, status, headers, config) {
    //            $scope.states = data;
    //        }).error(function (data, status, headers, config) {
    //            $scope.message = 'Unexpected Error';
    //        });
    //    }
    //    else {
    //        $scope.states = null;
    //    }
    //}

    //$scope.GetSelectedCountry = function () {
    //    $scope.strCountry = document.getElementById("ddlCountry").value;

    //};
});

function GetAllCountries() {
    var theUrl = "api/LostAndFound/GetAllLostData/";//http://localhost:63717/api/LostAndFound/GetAllLostData
    MakeRequest(theUrl, undefined, CallbackGet, "GET");
}




//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 


// created by the user 
// complex datatype - cause we can have multiple datatypes within it 
// can be made within / outside contracts
// by default - storage 

contract Struct{

    struct Student{
        uint age;
        string name;
        string degree;
        uint yearsofexp;
        bool employed;
    }

    Student public s1;
    Student public s2;
    Student public s3;

    constructor(string memory _a,string memory _b,string memory _c){
        s1.name = _a;
        s2.name = _b;
        s3.name = _c;
    }

    function updateStruct1() public{
        s1.age = 20;
        s1.name = 'Arka';
        s1.degree = 'B.Tech';
        s1.yearsofexp = 1;
    }

    function updateStruct2() public{
        Student memory student2 = Student(20,'Jeni','B.Tech',1,false);
        s2 = student2;
    }

    function updateStruct3() public{
        Student memory student3 = Student({age:22, degree:'M.Tech',name:'Rohit Negi',employed:true,yearsofexp:1});
        s3 = student3;
    }

}

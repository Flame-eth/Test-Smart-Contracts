// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract GpCalculator{

    string CourseName;
    uint Unit;
    uint Score;

struct Details{
    string CourseName;
    uint Unit;
    uint Score;
    // mapping (A => string) retrieveGrade;
    }
 
Details[] public details;

function addCourseDetails(string memory _CourseName, uint _Unit, uint _Score)public{
    details.push(Details(CourseName = _CourseName, Unit = _Unit, Score = _Score));
    }

function retrieveDetails()public view returns(string memory, uint, uint){
    return(CourseName, Unit, Score);}

function retrieveGrade() public view returns(string memory){
    if (Score >69 && Score<=100){
        return("A");
        } else if (Score >59 && Score<=69){
            return ("B");
            } else if (Score >49 && Score<=59){
                return ("C");
                }else if (Score >45 && Score<=49){
                    return ("D");
                    }else if (Score <45 && Score >=30){
                        return ("E");
                        }else if(Score <30){
                            return ("Retake this course!");
                            }else {
                        return ("Imposible");
                    }
    }



    // struct Grade{
    //     uint a = 4;
    //     uint b=3;
    //     uint c=2;
    //     uint d=1;
    // }


function getGradePointSum() public pure returns (uint) {
    // default value 0
    uint gradePoint;

    for (uint i = 0; i < gradePoint; i++) {
        gradePoint += gradePoint;
    }

    return gradePoint;
}


function getUnitSum() public view returns (uint) {
    // default value 0
    uint sum;

    for (uint i = 0; i < details.length; i++) {
        sum += details[i].Unit;
    }

    return sum;
}


function calculatePoint()public view returns(uint G){

    uint gradePoint;
    

    if (Score >69 && Score <=100){
        G = 4;
    }else if (Score >59 && Score<=69){
        G = 3;
    }else if (Score >49 && Score<=59){
        G = 2;
    }else if (Score >45 && Score<=49){
        G = 1;
    }else if (Score <=44){
        G = 0;
    }else{
        G = 0;
    }
    gradePoint = Unit * G;
    return gradePoint += gradePoint;

    // // uint sum;
    // // uint CGPA;
    // // uint i=CGPA;
    // // for(uint i=0; i<CGPA; i++){
    // //  CGPA = gradePoint/sum;
    // //  return CGPA;
    // }


}


// function calculateGPA(Unit)public view returns(uint Unit){
//     return Unit + Unit;
// }





// function getGPA()public pure returns(uint){
//     uint gradePoint;
//     uint sum;

//     return gradePoint/sum;
// }

// uint gradePoint;




}
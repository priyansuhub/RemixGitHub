pragma solidity >= 0.7.0 <0.9.0;


contract learnStructs{
    struct Movie{
        string title;
        string director;
        uint movie_id;
    }

    function setMovie() public {
        Movie('Blade Runner', 'Ridley Scott', 1);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TasksContract {
    uint256 public tasksCounter = 0;
    // struct creador de tarea
    struct Task {
        uint256 id;
        string title;
        string description;
        bool done;
        uint256 createdAt;
    }

    event TaskCreated(
        uint256 id,
        string title,
        string description,
        bool done,
        uint256 createdAt
    );

    event TaskToggledDone(uint256 id, bool done);

    // mapping arreglo de tarea
    mapping(uint256 => Task) public tasks;

    constructor() {
        createTask("my first task", "my first description");
    }

    // crea una tarea
    function createTask(string memory _title, string memory _description)
        public
    {
        tasksCounter++;
        tasks[tasksCounter] = Task(
            tasksCounter,
            _title,
            _description,
            false,
            block.timestamp
        );
        emit TaskCreated(
            tasksCounter,
            _title,
            _description,
            false,
            block.timestamp
        );
    }

    // cambia estado de tarea de true a false
    function toggleDone(uint256 _id) public {
        Task memory _task = tasks[_id];
        _task.done = !_task.done;
        tasks[_id] = _task;
        emit TaskToggledDone(_id, _task.done);
    }
}

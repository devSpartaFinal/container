import { useState, useCallback } from "react";
import { getTasks, createTask, deleteTask, markAsDone } from "../taskApi";

const useTasks = () => {
  const [tasks, setTasks] = useState([]);

  const fetchTasks = useCallback(async () => {
    const data = await getTasks();
    setTasks(data);
  }, []);

  const addTask = async (task) => {
    await createTask(task);
    fetchTasks();
  };

  const removeTask = async (id) => {
    await deleteTask(id);
    fetchTasks();
  };

  const completeTask = async (id) => {
    await markAsDone(id);
    fetchTasks();
  };

  return { tasks, fetchTasks, addTask, removeTask, completeTask };
};

export default useTasks;

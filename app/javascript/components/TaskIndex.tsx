import React, { useEffect, useState } from "react";

type Task = {
  id: number;
  name: string;
};

const TaskIndex: React.FC = () => {
  const [tasks, settasks] = useState<Task[]>([]);

  useEffect(() => {
    fetch("/api/v1/todos")
      .then((res) => res.json())
      .then((data) => settasks(data))
      .catch((err) => console.error("API fetch error:", err));
  }, []);

  return (
    <div>
      <h1 className="text-xl font-bold mb-4">一覧</h1>
      <ul className="space-y-2">
        {tasks.map((task) => (
          <li key={task.id} className="border p-2 rounded">
            {task.name}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default TaskIndex;

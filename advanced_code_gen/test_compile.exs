defmodule Test do
  defmodule A do
    defmacro __using__(_opts) do
      quote do
        IO.inspect __MODULE__
        @before_compile unquote(__MODULE__)
      end
    end

    defmacro __before_compile__(_env) do
      quote do
        def hello do
          :world
        end
      end
    end
  end

  defmodule B do
    use A
  end
end



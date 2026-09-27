module fork_join_example;
  initial begin
    $display("Start Time = %0t", $time);
    fork
      begin
        #5;
        $display("Process 1 completed at %0t", $time);
      end

      begin
        #10;
        $display("Process 2 completed at %0t", $time);
      end

      begin
        #15;
        $display("Process 3 completed at %0t", $time);
      end
    join
    $display("All processes completed at %0t", $time);
  end
endmodule

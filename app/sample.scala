// PiSpark.scala
import org.apache.spark.sql.SparkSession

object PiSpark {
  def main(args: Array[String]): Unit = {
    val spark = SparkSession.builder()
      .appName("Pi Calculation")
      .master("local[*]")
      .getOrCreate()

    val numSamples = 1000000 // You can adjust this for more accuracy

    val count = spark.sparkContext.parallelize(1 to numSamples)
      .map { _ =>
        val x = Math.random()
        val y = Math.random()
        if (x*x + y*y < 1) 1 else 0
      }
      .reduce(_ + _)

    println(s"Pi is roughly ${4.0 * count / numSamples}")

    spark.stop()
  }
}

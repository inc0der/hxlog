import sys.io.File;
import tslog.Logger;

class TestLog {
  public static function main() {
    var logger = new Logger();
		logger.silly('Boogey woogey woo');
		logger.info('Boogey woogey woo');
		logger.warn('Boogey woogey woo');
    logger.error('Boogey woogey woo');
    
    try {
      File.getContent('non-existentFile.js');
    } catch (error: js.lib.Error) {
      logger.prettyError(error);
    }
  }
}
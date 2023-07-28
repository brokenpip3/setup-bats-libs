setup() {
    load 'tests_helper'
    _tests_helper
}


@test "0: Pre: Create file and dir" {
  run mkdir testing
  run touch testing/example
  assert_success
}

#bats test_tags=github:true
@test "1: Testing file existence" {
  run ls testing/example
  assert_success
  assert_file_exists
  assert_success
}

#bats test_tags=github:true
@test "2: Testing file permissions" {
  run stat -c "%a" testing/example
  assert_success
  assert_output 644
  assert_file_permission 644 /path/to/permission
  assert_success
}

#bats test_tags=github:true
@test "3: Testing file content" {
  run cat testing/example
  assert_success
  refute_output "Expected content"
  assert_file_empty testing/example
  assert_success
}

#bats test_tags=github:true
@test "4: Testing file size" {
  run du -b testing/example | cut -f1
  assert_success
  assert_output 0
  assert_size_zero testing/example
}

#bats test_tags=github:true
@test "5: Testing directory creation" {
  run mkdir testing/newdir
  assert_dir_exists testing/newdir
  assert_success
}

#bats test_tags=github:true
@test "6: Testing file creation inside directory" {
  run touch testing/newdir/newfile
  assert_file_exists testing/newdir/newfile
  assert_success
}

#bats test_tags=github:true
@test "7: Testing file deletion" {
  run rm testing/newdir/newfile
  assert_file_not_exists testing/newdir/newfile
  assert_success
}

#bats test_tags=github:true
@test "8: Testing directory deletion" {
  run rmdir testing/newdir
  assert_dir_not_exists testing/newdir
  assert_success
}

#bats test_tags=github:true
@test "9: Testing file deletion" {
  run rm testing/example
  assert_file_not_exists testing/example
  assert_success
}

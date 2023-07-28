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
  [ -f "testing/example" ]
  assert_success
}

#bats test_tags=github:true
@test "2: Testing file permissions" {
  run stat -c "%a" testing/example
  [ "$output" -eq 644 ]
  assert_success
}

#bats test_tags=github:true
@test "3: Testing file content" {
  run cat testing/example
  [ "$output" = "Expected content" ]
  assert_success
}

#bats test_tags=github:true
@test "4: Testing file size" {
  run du -b testing/example | cut -f1
  [ "$output" -gt 0 ]
  assert_success
}

#bats test_tags=github:true
@test "5: Testing directory creation" {
  run mkdir testing/newdir
  [ -d "testing/newdir" ]
  assert_success
}

#bats test_tags=github:true
@test "6: Testing file creation inside directory" {
  run touch testing/newdir/newfile
  [ -f "testing/newdir/newfile" ]
  assert_success
}

#bats test_tags=github:true
@test "7: Testing file deletion" {
  run rm testing/newdir/newfile
  [ ! -f "testing/newdir/newfile" ]
  assert_success
}

#bats test_tags=github:true
@test "8: Testing directory deletion" {
  run rmdir testing/newdir
  [ ! -d "testing/newdir" ]
  assert_success
}

#bats test_tags=github:true
@test "9: Testing file deletion" {
  run rm testing/example
  [ ! -f "testing/example" ]
  assert_success
}

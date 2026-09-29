# SE5 Lab 2 - Refactoring Report

## 1. Refactoring Target

**File:** `pwd_list_page.dart`

**Class:** `PwdListPage`

**Refactored method:** `build()`

**Refactoring technique:** Extract Method

## 2. Baseline

Before refactoring, the `build()` method handled several responsibilities:
- Obtaining PWD records
- Building the page structure
- Handling the empty-record condition
- Constructing the `ListView.builder`

The list-building code made the `build()` method longer and less focused.

## 3. Refactoring Performed

The `ListView.builder` construction was extracted from `build()` into a new helper method:

`_buildRecordList(List<Pwd> records)`

After refactoring, `build()` is mainly responsible for composing the page and deciding whether to show the empty state or the record list.

## 4. Behavior Preservation

The refactoring was intended to preserve the observable behavior.

The following remain unchanged:
- Records are still obtained using `PwdService().getSampleRecords()`.
- The same empty-record message is displayed.
- The same PWD records are displayed.
- The same PWD card layout is used.
- The same padding and card spacing are retained.

## 5. Before and After

### Before

The `build()` method directly contained the `ListView.builder` and its `itemBuilder`.

### After

The `ListView.builder` is handled by:

```dart
_buildRecordList(records)

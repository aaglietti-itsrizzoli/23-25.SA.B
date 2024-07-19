const i32 TOTAL_SUSHI_TABLES = 12

/**
 * You can define enums, which are just 32 bit integers. Values are optional
 * and start at 1 if not supplied, C style again.
 */
enum TableStatus {
  FREE = 0,
  RESERVED = 1,
  CONFIRMED = 2,
  CANCELLED = 3,
  PAYED = 4
}

struct Table {
  1: i32 number,
  2: i32 seats,
  3: TableStatus status = TableStatus.FREE
}

/**
 * Structs can also be exceptions, if they are nasty.
 */
exception ReservationException {
  1: ReservationExceptionStatus whatOp,
  2: string message
}

enum ReservationExceptionStatus {
  UNMANGED = 0,
  CONFLICTED = 1
}

/**
 * Ahh, now onto the cool part, defining a service. Services just need a name
 */
service TableReservations {

   Table create(1:i32 number, 2:i32 seats),

   void reserve(1:i32 number, 2:TableStatus status) throws (1:ReservationException ouch),
}

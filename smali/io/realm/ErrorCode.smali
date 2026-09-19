###### Class io.realm.ErrorCode (io.realm.ErrorCode)
.class public final enum Lio/realm/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ErrorCode$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/ErrorCode;

.field public static final enum ACCESS_DENIED:Lio/realm/ErrorCode;

.field public static final enum AMBIGUOUS_PERMISSION_OFFER_TOKEN:Lio/realm/ErrorCode;

.field public static final enum BAD_AUTHENTICATION:Lio/realm/ErrorCode;

.field public static final enum BAD_CHANGESET:Lio/realm/ErrorCode;

.field public static final enum BAD_CHANGESET_DOWNLOAD:Lio/realm/ErrorCode;

.field public static final enum BAD_CLIENT_FILE_IDENT:Lio/realm/ErrorCode;

.field public static final enum BAD_CLIENT_VERSION:Lio/realm/ErrorCode;

.field public static final enum BAD_CLIENT_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

.field public static final enum BAD_COMPRESSION:Lio/realm/ErrorCode;

.field public static final enum BAD_ERROR_CODE:Lio/realm/ErrorCode;

.field public static final enum BAD_GATEWAY:Lio/realm/ErrorCode;

.field public static final enum BAD_MESSAGE_ORDER:Lio/realm/ErrorCode;

.field public static final enum BAD_ORIGIN_FILE_IDENT:Lio/realm/ErrorCode;

.field public static final enum BAD_REQUEST:Lio/realm/ErrorCode;

.field public static final enum BAD_REQUEST_IDENT:Lio/realm/ErrorCode;

.field public static final enum BAD_SERVER_FILE_IDENT:Lio/realm/ErrorCode;

.field public static final enum BAD_SERVER_VERSION:Lio/realm/ErrorCode;

.field public static final enum BAD_SERVER_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

.field public static final enum BAD_SESSION_IDENT:Lio/realm/ErrorCode;

.field public static final enum BAD_SYNTAX:Lio/realm/ErrorCode;

.field public static final enum BOUND_IN_OTHER_SESSION:Lio/realm/ErrorCode;

.field public static final enum CLIENT_RESET:Lio/realm/ErrorCode;

.field public static final enum CONFLICT:Lio/realm/ErrorCode;

.field public static final enum CONNECTION_CLOSED:Lio/realm/ErrorCode;

.field public static final enum DISABLED_SESSION:Lio/realm/ErrorCode;

.field public static final enum DIVERGING_HISTORIES:Lio/realm/ErrorCode;

.field public static final enum EXISTING_ACCOUNT:Lio/realm/ErrorCode;

.field public static final enum EXPECTATION_FAILED:Lio/realm/ErrorCode;

.field public static final enum EXPIRED_PERMISSION_OFFER:Lio/realm/ErrorCode;

.field public static final enum EXPIRED_REFRESH_TOKEN:Lio/realm/ErrorCode;

.field public static final enum FAILED_DEPENDENCY:Lio/realm/ErrorCode;

.field public static final enum FILE_MAY_NOT_BE_SHARED:Lio/realm/ErrorCode;

.field public static final enum FORBIDDEN:Lio/realm/ErrorCode;

.field public static final enum FOUND:Lio/realm/ErrorCode;

.field public static final enum GATEWAY_TIMEOUT:Lio/realm/ErrorCode;

.field public static final enum GONE:Lio/realm/ErrorCode;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lio/realm/ErrorCode;

.field public static final enum ILLEGAL_REALM_PATH:Lio/realm/ErrorCode;

.field public static final enum INSUFFICIENT_STORAGE:Lio/realm/ErrorCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lio/realm/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lio/realm/ErrorCode;

.field public static final enum INVALID_HOST:Lio/realm/ErrorCode;

.field public static final enum INVALID_PARAMETERS:Lio/realm/ErrorCode;

.field public static final enum IO_EXCEPTION:Lio/realm/ErrorCode;

.field public static final enum JSON_EXCEPTION:Lio/realm/ErrorCode;

.field public static final enum LENGTH_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum LIMITS_EXCEEDED:Lio/realm/ErrorCode;

.field public static final enum LOCKED:Lio/realm/ErrorCode;

.field public static final enum LOOP_DETECTED:Lio/realm/ErrorCode;

.field public static final enum METHOD_NOT_ALLOWED:Lio/realm/ErrorCode;

.field public static final enum MISDIRECTED_REQUEST:Lio/realm/ErrorCode;

.field public static final enum MISSING_PARAMETERS:Lio/realm/ErrorCode;

.field public static final enum MOVED_PERMANENTLY:Lio/realm/ErrorCode;

.field public static final enum MULTIPLE_CHOICES:Lio/realm/ErrorCode;

.field public static final enum NETWORK_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum NOT_ACCEPTABLE:Lio/realm/ErrorCode;

.field public static final enum NOT_EXTENDED:Lio/realm/ErrorCode;

.field public static final enum NOT_FOUND:Lio/realm/ErrorCode;

.field public static final enum NOT_IMPLEMENTED:Lio/realm/ErrorCode;

.field public static final enum NOT_MODIFIED:Lio/realm/ErrorCode;

.field public static final enum NO_SUCH_PATH:Lio/realm/ErrorCode;

.field public static final enum OTHER_ERROR:Lio/realm/ErrorCode;

.field public static final enum OTHER_SESSION_ERROR:Lio/realm/ErrorCode;

.field public static final enum PARTIAL_SYNC_DISABLED:Lio/realm/ErrorCode;

.field public static final enum PAYLOAD_TOO_LARGE:Lio/realm/ErrorCode;

.field public static final enum PAYMENT_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum PERMANENT_REDIRECT:Lio/realm/ErrorCode;

.field public static final enum PERMISSION_DENIED:Lio/realm/ErrorCode;

.field public static final enum PONG_TIMEOUT:Lio/realm/ErrorCode;

.field public static final enum PRECONDITION_FAILED:Lio/realm/ErrorCode;

.field public static final enum PRECONDITION_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum RANGE_NOT_SATISFIABLE:Lio/realm/ErrorCode;

.field public static final enum REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/realm/ErrorCode;

.field public static final enum REQUEST_TIMEOUT:Lio/realm/ErrorCode;

.field public static final enum REUSE_OF_SESSION_IDENT:Lio/realm/ErrorCode;

.field public static final enum SEE_OTHER:Lio/realm/ErrorCode;

.field public static final enum SERVER_MISCONFIGURATION:Lio/realm/ErrorCode;

.field public static final enum SERVICE_UNAVAILABLE:Lio/realm/ErrorCode;

.field public static final enum SESSION_CLOSED:Lio/realm/ErrorCode;

.field public static final enum SSL_SERVER_CERT_REJECTED:Lio/realm/ErrorCode;

.field public static final enum TEMPORARY_REDIRECT:Lio/realm/ErrorCode;

.field public static final enum TOKEN_EXPIRED:Lio/realm/ErrorCode;

.field public static final enum TOO_MANY_REQUESTS:Lio/realm/ErrorCode;

.field public static final enum UNAUTHORIZED:Lio/realm/ErrorCode;

.field public static final enum UNAVAILABLE_FOR_LEGAL_REASONS:Lio/realm/ErrorCode;

.field public static final enum UNKNOWN:Lio/realm/ErrorCode;

.field public static final enum UNKNOWN_ACCOUNT:Lio/realm/ErrorCode;

.field public static final enum UNKNOWN_MESSAGE:Lio/realm/ErrorCode;

.field public static final enum UNPROCESSABLE_ENTITY:Lio/realm/ErrorCode;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lio/realm/ErrorCode;

.field public static final enum UPGRADE_REQUIRED:Lio/realm/ErrorCode;

.field public static final enum URI_TOO_LONG:Lio/realm/ErrorCode;

.field public static final enum USE_PROXY:Lio/realm/ErrorCode;

.field public static final enum VARIANT_ALSO_NEGOTIATES:Lio/realm/ErrorCode;

.field public static final enum WRONG_PROTOCOL_VERSION:Lio/realm/ErrorCode;


# instance fields
.field private final category:Lio/realm/ErrorCode$Category;

.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 34
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    .line 35
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "IO_EXCEPTION"

    sget-object v3, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V

    sput-object v0, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    .line 36
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "JSON_EXCEPTION"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v4}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    .line 37
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "CLIENT_RESET"

    const/4 v5, 0x3

    const/4 v6, 0x7

    invoke-direct {v0, v1, v5, v6}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    .line 41
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "CONNECTION_CLOSED"

    const/4 v7, 0x4

    const/16 v8, 0x64

    invoke-direct {v0, v1, v7, v8}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->CONNECTION_CLOSED:Lio/realm/ErrorCode;

    .line 42
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "OTHER_ERROR"

    const/4 v8, 0x5

    const/16 v9, 0x65

    invoke-direct {v0, v1, v8, v9}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->OTHER_ERROR:Lio/realm/ErrorCode;

    .line 43
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNKNOWN_MESSAGE"

    const/4 v9, 0x6

    const/16 v10, 0x66

    invoke-direct {v0, v1, v9, v10}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNKNOWN_MESSAGE:Lio/realm/ErrorCode;

    .line 44
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_SYNTAX"

    const/16 v10, 0x67

    invoke-direct {v0, v1, v6, v10}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_SYNTAX:Lio/realm/ErrorCode;

    .line 45
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "LIMITS_EXCEEDED"

    const/16 v10, 0x8

    const/16 v11, 0x68

    invoke-direct {v0, v1, v10, v11}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->LIMITS_EXCEEDED:Lio/realm/ErrorCode;

    .line 46
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "WRONG_PROTOCOL_VERSION"

    const/16 v11, 0x9

    const/16 v12, 0x69

    invoke-direct {v0, v1, v11, v12}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->WRONG_PROTOCOL_VERSION:Lio/realm/ErrorCode;

    .line 47
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_SESSION_IDENT"

    const/16 v12, 0xa

    const/16 v13, 0x6a

    invoke-direct {v0, v1, v12, v13}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_SESSION_IDENT:Lio/realm/ErrorCode;

    .line 48
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "REUSE_OF_SESSION_IDENT"

    const/16 v13, 0xb

    const/16 v14, 0x6b

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->REUSE_OF_SESSION_IDENT:Lio/realm/ErrorCode;

    .line 49
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BOUND_IN_OTHER_SESSION"

    const/16 v14, 0xc

    const/16 v15, 0x6c

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BOUND_IN_OTHER_SESSION:Lio/realm/ErrorCode;

    .line 50
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_MESSAGE_ORDER"

    const/16 v15, 0xd

    const/16 v14, 0x6d

    invoke-direct {v0, v1, v15, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_MESSAGE_ORDER:Lio/realm/ErrorCode;

    .line 51
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_ORIGIN_FILE_IDENT"

    const/16 v14, 0xe

    const/16 v15, 0x6e

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_ORIGIN_FILE_IDENT:Lio/realm/ErrorCode;

    .line 52
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_SERVER_VERSION_DOWNLOAD"

    const/16 v15, 0xf

    const/16 v14, 0x6f

    invoke-direct {v0, v1, v15, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_SERVER_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

    .line 53
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_CHANGESET_DOWNLOAD"

    const/16 v14, 0x10

    const/16 v15, 0x70

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_CHANGESET_DOWNLOAD:Lio/realm/ErrorCode;

    .line 54
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_REQUEST_IDENT"

    const/16 v14, 0x11

    const/16 v15, 0x71

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_REQUEST_IDENT:Lio/realm/ErrorCode;

    .line 55
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_ERROR_CODE"

    const/16 v14, 0x12

    const/16 v15, 0x72

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_ERROR_CODE:Lio/realm/ErrorCode;

    .line 56
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_COMPRESSION"

    const/16 v14, 0x13

    const/16 v15, 0x73

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_COMPRESSION:Lio/realm/ErrorCode;

    .line 57
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_CLIENT_VERSION_DOWNLOAD"

    const/16 v14, 0x14

    const/16 v15, 0x74

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_CLIENT_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

    .line 58
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "SSL_SERVER_CERT_REJECTED"

    const/16 v14, 0x15

    const/16 v15, 0x75

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->SSL_SERVER_CERT_REJECTED:Lio/realm/ErrorCode;

    .line 59
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PONG_TIMEOUT"

    const/16 v14, 0x16

    const/16 v15, 0x76

    invoke-direct {v0, v1, v14, v15}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PONG_TIMEOUT:Lio/realm/ErrorCode;

    .line 62
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "SESSION_CLOSED"

    sget-object v14, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    const/16 v15, 0x17

    const/16 v13, 0xc8

    invoke-direct {v0, v1, v15, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V

    sput-object v0, Lio/realm/ErrorCode;->SESSION_CLOSED:Lio/realm/ErrorCode;

    .line 63
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "OTHER_SESSION_ERROR"

    sget-object v13, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    const/16 v14, 0x18

    const/16 v15, 0xc9

    invoke-direct {v0, v1, v14, v15, v13}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V

    sput-object v0, Lio/realm/ErrorCode;->OTHER_SESSION_ERROR:Lio/realm/ErrorCode;

    .line 64
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "TOKEN_EXPIRED"

    sget-object v13, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    const/16 v14, 0x19

    const/16 v15, 0xca

    invoke-direct {v0, v1, v14, v15, v13}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V

    sput-object v0, Lio/realm/ErrorCode;->TOKEN_EXPIRED:Lio/realm/ErrorCode;

    .line 67
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_AUTHENTICATION"

    const/16 v13, 0x1a

    const/16 v14, 0xcb

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_AUTHENTICATION:Lio/realm/ErrorCode;

    .line 68
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "ILLEGAL_REALM_PATH"

    const/16 v13, 0x1b

    const/16 v14, 0xcc

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->ILLEGAL_REALM_PATH:Lio/realm/ErrorCode;

    .line 69
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NO_SUCH_PATH"

    const/16 v13, 0x1c

    const/16 v14, 0xcd

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NO_SUCH_PATH:Lio/realm/ErrorCode;

    .line 70
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PERMISSION_DENIED"

    const/16 v13, 0x1d

    const/16 v14, 0xce

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PERMISSION_DENIED:Lio/realm/ErrorCode;

    .line 73
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_SERVER_FILE_IDENT"

    const/16 v13, 0x1e

    const/16 v14, 0xcf

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_SERVER_FILE_IDENT:Lio/realm/ErrorCode;

    .line 74
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_CLIENT_FILE_IDENT"

    const/16 v13, 0x1f

    const/16 v14, 0xd0

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_CLIENT_FILE_IDENT:Lio/realm/ErrorCode;

    .line 75
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_SERVER_VERSION"

    const/16 v13, 0x20

    const/16 v14, 0xd1

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_SERVER_VERSION:Lio/realm/ErrorCode;

    .line 76
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_CLIENT_VERSION"

    const/16 v13, 0x21

    const/16 v14, 0xd2

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_CLIENT_VERSION:Lio/realm/ErrorCode;

    .line 77
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "DIVERGING_HISTORIES"

    const/16 v13, 0x22

    const/16 v14, 0xd3

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->DIVERGING_HISTORIES:Lio/realm/ErrorCode;

    .line 78
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_CHANGESET"

    const/16 v13, 0x23

    const/16 v14, 0xd4

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_CHANGESET:Lio/realm/ErrorCode;

    .line 79
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "DISABLED_SESSION"

    const/16 v13, 0x24

    const/16 v14, 0xd5

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->DISABLED_SESSION:Lio/realm/ErrorCode;

    .line 80
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PARTIAL_SYNC_DISABLED"

    const/16 v13, 0x25

    const/16 v14, 0xd6

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PARTIAL_SYNC_DISABLED:Lio/realm/ErrorCode;

    .line 83
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "MULTIPLE_CHOICES"

    const/16 v13, 0x26

    const/16 v14, 0x12c

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->MULTIPLE_CHOICES:Lio/realm/ErrorCode;

    .line 84
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "MOVED_PERMANENTLY"

    const/16 v13, 0x27

    const/16 v14, 0x12d

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->MOVED_PERMANENTLY:Lio/realm/ErrorCode;

    .line 85
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "FOUND"

    const/16 v13, 0x28

    const/16 v14, 0x12e

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->FOUND:Lio/realm/ErrorCode;

    .line 86
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "SEE_OTHER"

    const/16 v13, 0x29

    const/16 v14, 0x12f

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->SEE_OTHER:Lio/realm/ErrorCode;

    .line 87
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NOT_MODIFIED"

    const/16 v13, 0x2a

    const/16 v14, 0x130

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NOT_MODIFIED:Lio/realm/ErrorCode;

    .line 88
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "USE_PROXY"

    const/16 v13, 0x2b

    const/16 v14, 0x131

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->USE_PROXY:Lio/realm/ErrorCode;

    .line 89
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "TEMPORARY_REDIRECT"

    const/16 v13, 0x2c

    const/16 v14, 0x133

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->TEMPORARY_REDIRECT:Lio/realm/ErrorCode;

    .line 90
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PERMANENT_REDIRECT"

    const/16 v13, 0x2d

    const/16 v14, 0x134

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PERMANENT_REDIRECT:Lio/realm/ErrorCode;

    .line 91
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_REQUEST"

    const/16 v13, 0x2e

    const/16 v14, 0x190

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_REQUEST:Lio/realm/ErrorCode;

    .line 92
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNAUTHORIZED"

    const/16 v13, 0x2f

    const/16 v14, 0x191

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNAUTHORIZED:Lio/realm/ErrorCode;

    .line 93
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PAYMENT_REQUIRED"

    const/16 v13, 0x30

    const/16 v14, 0x192

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PAYMENT_REQUIRED:Lio/realm/ErrorCode;

    .line 94
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "FORBIDDEN"

    const/16 v13, 0x31

    const/16 v14, 0x193

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->FORBIDDEN:Lio/realm/ErrorCode;

    .line 95
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NOT_FOUND"

    const/16 v13, 0x32

    const/16 v14, 0x194

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NOT_FOUND:Lio/realm/ErrorCode;

    .line 96
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v13, 0x33

    const/16 v14, 0x195

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->METHOD_NOT_ALLOWED:Lio/realm/ErrorCode;

    .line 97
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v13, 0x34

    const/16 v14, 0x196

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NOT_ACCEPTABLE:Lio/realm/ErrorCode;

    .line 98
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PROXY_AUTHENTICATION_REQUIRED"

    const/16 v13, 0x35

    const/16 v14, 0x197

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PROXY_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

    .line 99
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v13, 0x36

    const/16 v14, 0x198

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->REQUEST_TIMEOUT:Lio/realm/ErrorCode;

    .line 100
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "CONFLICT"

    const/16 v13, 0x37

    const/16 v14, 0x199

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->CONFLICT:Lio/realm/ErrorCode;

    .line 101
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "GONE"

    const/16 v13, 0x38

    const/16 v14, 0x19a

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->GONE:Lio/realm/ErrorCode;

    .line 102
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "LENGTH_REQUIRED"

    const/16 v13, 0x39

    const/16 v14, 0x19b

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->LENGTH_REQUIRED:Lio/realm/ErrorCode;

    .line 103
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v13, 0x3a

    const/16 v14, 0x19c

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PRECONDITION_FAILED:Lio/realm/ErrorCode;

    .line 104
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PAYLOAD_TOO_LARGE"

    const/16 v13, 0x3b

    const/16 v14, 0x19d

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PAYLOAD_TOO_LARGE:Lio/realm/ErrorCode;

    .line 105
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "URI_TOO_LONG"

    const/16 v13, 0x3c

    const/16 v14, 0x19e

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->URI_TOO_LONG:Lio/realm/ErrorCode;

    .line 106
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v13, 0x3d

    const/16 v14, 0x19f

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNSUPPORTED_MEDIA_TYPE:Lio/realm/ErrorCode;

    .line 107
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v13, 0x3e

    const/16 v14, 0x1a0

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->RANGE_NOT_SATISFIABLE:Lio/realm/ErrorCode;

    .line 108
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "EXPECTATION_FAILED"

    const/16 v13, 0x3f

    const/16 v14, 0x1a1

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->EXPECTATION_FAILED:Lio/realm/ErrorCode;

    .line 109
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "MISDIRECTED_REQUEST"

    const/16 v13, 0x40

    const/16 v14, 0x1a5

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->MISDIRECTED_REQUEST:Lio/realm/ErrorCode;

    .line 110
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNPROCESSABLE_ENTITY"

    const/16 v13, 0x41

    const/16 v14, 0x1a6

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNPROCESSABLE_ENTITY:Lio/realm/ErrorCode;

    .line 111
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "LOCKED"

    const/16 v13, 0x42

    const/16 v14, 0x1a7

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->LOCKED:Lio/realm/ErrorCode;

    .line 112
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "FAILED_DEPENDENCY"

    const/16 v13, 0x43

    const/16 v14, 0x1a8

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->FAILED_DEPENDENCY:Lio/realm/ErrorCode;

    .line 113
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UPGRADE_REQUIRED"

    const/16 v13, 0x44

    const/16 v14, 0x1aa

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UPGRADE_REQUIRED:Lio/realm/ErrorCode;

    .line 114
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "PRECONDITION_REQUIRED"

    const/16 v13, 0x45

    const/16 v14, 0x1ac

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->PRECONDITION_REQUIRED:Lio/realm/ErrorCode;

    .line 115
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "TOO_MANY_REQUESTS"

    const/16 v13, 0x46

    const/16 v14, 0x1ad

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->TOO_MANY_REQUESTS:Lio/realm/ErrorCode;

    .line 116
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "REQUEST_HEADER_FIELDS_TOO_LARGE"

    const/16 v13, 0x47

    const/16 v14, 0x1af

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/realm/ErrorCode;

    .line 117
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNAVAILABLE_FOR_LEGAL_REASONS"

    const/16 v13, 0x48

    const/16 v14, 0x1c3

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNAVAILABLE_FOR_LEGAL_REASONS:Lio/realm/ErrorCode;

    .line 118
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/16 v13, 0x49

    const/16 v14, 0x1f4

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->INTERNAL_SERVER_ERROR:Lio/realm/ErrorCode;

    .line 119
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v13, 0x4a

    const/16 v14, 0x1f5

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NOT_IMPLEMENTED:Lio/realm/ErrorCode;

    .line 120
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "BAD_GATEWAY"

    const/16 v13, 0x4b

    const/16 v14, 0x1f6

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->BAD_GATEWAY:Lio/realm/ErrorCode;

    .line 121
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v13, 0x4c

    const/16 v14, 0x1f7

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->SERVICE_UNAVAILABLE:Lio/realm/ErrorCode;

    .line 122
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "GATEWAY_TIMEOUT"

    const/16 v13, 0x4d

    const/16 v14, 0x1f8

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->GATEWAY_TIMEOUT:Lio/realm/ErrorCode;

    .line 123
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "HTTP_VERSION_NOT_SUPPORTED"

    const/16 v13, 0x4e

    const/16 v14, 0x1f9

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->HTTP_VERSION_NOT_SUPPORTED:Lio/realm/ErrorCode;

    .line 124
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "VARIANT_ALSO_NEGOTIATES"

    const/16 v13, 0x4f

    const/16 v14, 0x1fa

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->VARIANT_ALSO_NEGOTIATES:Lio/realm/ErrorCode;

    .line 125
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/16 v13, 0x50

    const/16 v14, 0x1fb

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->INSUFFICIENT_STORAGE:Lio/realm/ErrorCode;

    .line 126
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "LOOP_DETECTED"

    const/16 v13, 0x51

    const/16 v14, 0x1fc

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->LOOP_DETECTED:Lio/realm/ErrorCode;

    .line 127
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NOT_EXTENDED"

    const/16 v13, 0x52

    const/16 v14, 0x1fe

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NOT_EXTENDED:Lio/realm/ErrorCode;

    .line 128
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "NETWORK_AUTHENTICATION_REQUIRED"

    const/16 v13, 0x53

    const/16 v14, 0x1ff

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->NETWORK_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

    .line 131
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "INVALID_PARAMETERS"

    const/16 v13, 0x54

    const/16 v14, 0x259

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->INVALID_PARAMETERS:Lio/realm/ErrorCode;

    .line 132
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "MISSING_PARAMETERS"

    const/16 v13, 0x55

    const/16 v14, 0x25a

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->MISSING_PARAMETERS:Lio/realm/ErrorCode;

    .line 133
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "INVALID_CREDENTIALS"

    const/16 v13, 0x56

    const/16 v14, 0x263

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->INVALID_CREDENTIALS:Lio/realm/ErrorCode;

    .line 134
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "UNKNOWN_ACCOUNT"

    const/16 v13, 0x57

    const/16 v14, 0x264

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->UNKNOWN_ACCOUNT:Lio/realm/ErrorCode;

    .line 135
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "EXISTING_ACCOUNT"

    const/16 v13, 0x58

    const/16 v14, 0x265

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->EXISTING_ACCOUNT:Lio/realm/ErrorCode;

    .line 136
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "ACCESS_DENIED"

    const/16 v13, 0x59

    const/16 v14, 0x266

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->ACCESS_DENIED:Lio/realm/ErrorCode;

    .line 137
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "EXPIRED_REFRESH_TOKEN"

    const/16 v13, 0x5a

    const/16 v14, 0x267

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->EXPIRED_REFRESH_TOKEN:Lio/realm/ErrorCode;

    .line 138
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "INVALID_HOST"

    const/16 v13, 0x5b

    const/16 v14, 0x268

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->INVALID_HOST:Lio/realm/ErrorCode;

    .line 141
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "EXPIRED_PERMISSION_OFFER"

    const/16 v13, 0x5c

    const/16 v14, 0x2bd

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->EXPIRED_PERMISSION_OFFER:Lio/realm/ErrorCode;

    .line 142
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "AMBIGUOUS_PERMISSION_OFFER_TOKEN"

    const/16 v13, 0x5d

    const/16 v14, 0x2be

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->AMBIGUOUS_PERMISSION_OFFER_TOKEN:Lio/realm/ErrorCode;

    .line 143
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "FILE_MAY_NOT_BE_SHARED"

    const/16 v13, 0x5e

    const/16 v14, 0x2bf

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->FILE_MAY_NOT_BE_SHARED:Lio/realm/ErrorCode;

    .line 144
    new-instance v0, Lio/realm/ErrorCode;

    const-string v1, "SERVER_MISCONFIGURATION"

    const/16 v13, 0x5f

    const/16 v14, 0x321

    invoke-direct {v0, v1, v13, v14}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/ErrorCode;->SERVER_MISCONFIGURATION:Lio/realm/ErrorCode;

    .line 27
    const/16 v0, 0x60

    new-array v0, v0, [Lio/realm/ErrorCode;

    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/ErrorCode;->CONNECTION_CLOSED:Lio/realm/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lio/realm/ErrorCode;->OTHER_ERROR:Lio/realm/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN_MESSAGE:Lio/realm/ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lio/realm/ErrorCode;->BAD_SYNTAX:Lio/realm/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/ErrorCode;->LIMITS_EXCEEDED:Lio/realm/ErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lio/realm/ErrorCode;->WRONG_PROTOCOL_VERSION:Lio/realm/ErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lio/realm/ErrorCode;->BAD_SESSION_IDENT:Lio/realm/ErrorCode;

    aput-object v1, v0, v12

    sget-object v1, Lio/realm/ErrorCode;->REUSE_OF_SESSION_IDENT:Lio/realm/ErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BOUND_IN_OTHER_SESSION:Lio/realm/ErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_MESSAGE_ORDER:Lio/realm/ErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_ORIGIN_FILE_IDENT:Lio/realm/ErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_SERVER_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_CHANGESET_DOWNLOAD:Lio/realm/ErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_REQUEST_IDENT:Lio/realm/ErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_ERROR_CODE:Lio/realm/ErrorCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_COMPRESSION:Lio/realm/ErrorCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_CLIENT_VERSION_DOWNLOAD:Lio/realm/ErrorCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->SSL_SERVER_CERT_REJECTED:Lio/realm/ErrorCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PONG_TIMEOUT:Lio/realm/ErrorCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->SESSION_CLOSED:Lio/realm/ErrorCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->OTHER_SESSION_ERROR:Lio/realm/ErrorCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->TOKEN_EXPIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_AUTHENTICATION:Lio/realm/ErrorCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->ILLEGAL_REALM_PATH:Lio/realm/ErrorCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NO_SUCH_PATH:Lio/realm/ErrorCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PERMISSION_DENIED:Lio/realm/ErrorCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_SERVER_FILE_IDENT:Lio/realm/ErrorCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_CLIENT_FILE_IDENT:Lio/realm/ErrorCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_SERVER_VERSION:Lio/realm/ErrorCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_CLIENT_VERSION:Lio/realm/ErrorCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->DIVERGING_HISTORIES:Lio/realm/ErrorCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_CHANGESET:Lio/realm/ErrorCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->DISABLED_SESSION:Lio/realm/ErrorCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PARTIAL_SYNC_DISABLED:Lio/realm/ErrorCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->MULTIPLE_CHOICES:Lio/realm/ErrorCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->MOVED_PERMANENTLY:Lio/realm/ErrorCode;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->FOUND:Lio/realm/ErrorCode;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->SEE_OTHER:Lio/realm/ErrorCode;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NOT_MODIFIED:Lio/realm/ErrorCode;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->USE_PROXY:Lio/realm/ErrorCode;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->TEMPORARY_REDIRECT:Lio/realm/ErrorCode;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PERMANENT_REDIRECT:Lio/realm/ErrorCode;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_REQUEST:Lio/realm/ErrorCode;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UNAUTHORIZED:Lio/realm/ErrorCode;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PAYMENT_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->FORBIDDEN:Lio/realm/ErrorCode;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NOT_FOUND:Lio/realm/ErrorCode;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->METHOD_NOT_ALLOWED:Lio/realm/ErrorCode;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NOT_ACCEPTABLE:Lio/realm/ErrorCode;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PROXY_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->REQUEST_TIMEOUT:Lio/realm/ErrorCode;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->CONFLICT:Lio/realm/ErrorCode;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->GONE:Lio/realm/ErrorCode;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->LENGTH_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PRECONDITION_FAILED:Lio/realm/ErrorCode;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PAYLOAD_TOO_LARGE:Lio/realm/ErrorCode;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->URI_TOO_LONG:Lio/realm/ErrorCode;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UNSUPPORTED_MEDIA_TYPE:Lio/realm/ErrorCode;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->RANGE_NOT_SATISFIABLE:Lio/realm/ErrorCode;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->EXPECTATION_FAILED:Lio/realm/ErrorCode;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->MISDIRECTED_REQUEST:Lio/realm/ErrorCode;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UNPROCESSABLE_ENTITY:Lio/realm/ErrorCode;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->LOCKED:Lio/realm/ErrorCode;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->FAILED_DEPENDENCY:Lio/realm/ErrorCode;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UPGRADE_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->PRECONDITION_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->TOO_MANY_REQUESTS:Lio/realm/ErrorCode;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/realm/ErrorCode;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UNAVAILABLE_FOR_LEGAL_REASONS:Lio/realm/ErrorCode;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->INTERNAL_SERVER_ERROR:Lio/realm/ErrorCode;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NOT_IMPLEMENTED:Lio/realm/ErrorCode;

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->BAD_GATEWAY:Lio/realm/ErrorCode;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->SERVICE_UNAVAILABLE:Lio/realm/ErrorCode;

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->GATEWAY_TIMEOUT:Lio/realm/ErrorCode;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->HTTP_VERSION_NOT_SUPPORTED:Lio/realm/ErrorCode;

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->VARIANT_ALSO_NEGOTIATES:Lio/realm/ErrorCode;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->INSUFFICIENT_STORAGE:Lio/realm/ErrorCode;

    const/16 v2, 0x50

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->LOOP_DETECTED:Lio/realm/ErrorCode;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NOT_EXTENDED:Lio/realm/ErrorCode;

    const/16 v2, 0x52

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->NETWORK_AUTHENTICATION_REQUIRED:Lio/realm/ErrorCode;

    const/16 v2, 0x53

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->INVALID_PARAMETERS:Lio/realm/ErrorCode;

    const/16 v2, 0x54

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->MISSING_PARAMETERS:Lio/realm/ErrorCode;

    const/16 v2, 0x55

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->INVALID_CREDENTIALS:Lio/realm/ErrorCode;

    const/16 v2, 0x56

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN_ACCOUNT:Lio/realm/ErrorCode;

    const/16 v2, 0x57

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->EXISTING_ACCOUNT:Lio/realm/ErrorCode;

    const/16 v2, 0x58

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->ACCESS_DENIED:Lio/realm/ErrorCode;

    const/16 v2, 0x59

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->EXPIRED_REFRESH_TOKEN:Lio/realm/ErrorCode;

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->INVALID_HOST:Lio/realm/ErrorCode;

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->EXPIRED_PERMISSION_OFFER:Lio/realm/ErrorCode;

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->AMBIGUOUS_PERMISSION_OFFER_TOKEN:Lio/realm/ErrorCode;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->FILE_MAY_NOT_BE_SHARED:Lio/realm/ErrorCode;

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode;->SERVER_MISCONFIGURATION:Lio/realm/ErrorCode;

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/ErrorCode;->$VALUES:[Lio/realm/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/ErrorCode;-><init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V

    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILio/realm/ErrorCode$Category;)V
    .registers 5
    .param p3, "errorCode"    # I
    .param p4, "category"    # Lio/realm/ErrorCode$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/ErrorCode$Category;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lio/realm/ErrorCode;->code:I

    .line 155
    iput-object p4, p0, Lio/realm/ErrorCode;->category:Lio/realm/ErrorCode$Category;

    .line 156
    return-void
.end method

.method public static fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 208
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 209
    sget-object v0, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    return-object v0

    .line 211
    :cond_7
    sget-object v0, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    return-object v0
.end method

.method public static fromInt(I)Lio/realm/ErrorCode;
    .registers 6
    .param p0, "errorCode"    # I

    .line 190
    invoke-static {}, Lio/realm/ErrorCode;->values()[Lio/realm/ErrorCode;

    move-result-object v0

    .line 191
    .local v0, "errorCodes":[Lio/realm/ErrorCode;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_15

    .line 192
    aget-object v3, v0, v2

    .line 193
    .local v3, "error":Lio/realm/ErrorCode;
    invoke-virtual {v3}, Lio/realm/ErrorCode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_12

    .line 194
    return-object v3

    .line 191
    .end local v3    # "error":Lio/realm/ErrorCode;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 197
    .end local v2    # "i":I
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lio/realm/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/ErrorCode;

    return-object v0
.end method

.method public static values()[Lio/realm/ErrorCode;
    .registers 1

    .line 27
    sget-object v0, Lio/realm/ErrorCode;->$VALUES:[Lio/realm/ErrorCode;

    invoke-virtual {v0}, [Lio/realm/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lio/realm/ErrorCode$Category;
    .registers 2

    .line 186
    iget-object v0, p0, Lio/realm/ErrorCode;->category:Lio/realm/ErrorCode$Category;

    return-object v0
.end method

.method public intValue()I
    .registers 2

    .line 169
    iget v0, p0, Lio/realm/ErrorCode;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/realm/ErrorCode;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.ErrorCode.Category (io.realm.ErrorCode$Category)
.class public final enum Lio/realm/ErrorCode$Category;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/ErrorCode$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/ErrorCode$Category;

.field public static final enum FATAL:Lio/realm/ErrorCode$Category;

.field public static final enum RECOVERABLE:Lio/realm/ErrorCode$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 216
    new-instance v0, Lio/realm/ErrorCode$Category;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/ErrorCode$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    .line 217
    new-instance v0, Lio/realm/ErrorCode$Category;

    const-string v1, "RECOVERABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/ErrorCode$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/ErrorCode$Category;

    sget-object v1, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/ErrorCode$Category;->$VALUES:[Lio/realm/ErrorCode$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/ErrorCode$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    const-class v0, Lio/realm/ErrorCode$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/ErrorCode$Category;

    return-object v0
.end method

.method public static values()[Lio/realm/ErrorCode$Category;
    .registers 1

    .line 215
    sget-object v0, Lio/realm/ErrorCode$Category;->$VALUES:[Lio/realm/ErrorCode$Category;

    invoke-virtual {v0}, [Lio/realm/ErrorCode$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/ErrorCode$Category;

    return-object v0
.end method

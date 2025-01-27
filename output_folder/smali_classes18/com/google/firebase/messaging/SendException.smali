.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;
.source "SendException.java"


# static fields
.field public static final ERROR_INVALID_PARAMETERS:I = 0x1

.field public static final ERROR_SIZE:I = 0x2

.field public static final ERROR_TOO_MANY_MESSAGES:I = 0x4

.field public static final ERROR_TTL_EXCEEDED:I = 0x3

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/SendException;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    .line 46
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 8
    .param p1, "error"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "missing_to"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_1
    const-string v3, "messagetoobig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_2
    const-string v3, "invalid_parameters"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "toomanymessages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "service_not_available"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 67
    return v0

    .line 65
    :pswitch_0
    return v4

    .line 63
    :pswitch_1
    return v5

    .line 61
    :pswitch_2
    return v6

    .line 59
    :pswitch_3
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x67e7c3ad -> :sswitch_4
        -0x4cf26401 -> :sswitch_3
        -0x36e3eace -> :sswitch_2
        -0x24c7160d -> :sswitch_1
        -0x5aa500c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return v0
.end method

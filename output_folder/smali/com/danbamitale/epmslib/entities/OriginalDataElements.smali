.class public final Lcom/danbamitale/epmslib/entities/OriginalDataElements;
.super Ljava/lang/Object;
.source "TransactionRequestData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0010J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J\t\u0010+\u001a\u00020\u0007H\u00c6\u0003J\t\u0010,\u001a\u00020\u0007H\u00c6\u0003J\t\u0010-\u001a\u00020\rH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003Jq\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005H\u00c6\u0001J\t\u00100\u001a\u000201H\u00d6\u0001J\u0013\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u000105H\u00d6\u0003J\t\u00106\u001a\u000201H\u00d6\u0001J\t\u00107\u001a\u00020\u0007H\u00d6\u0001J\u0019\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u000201H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0012R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006="
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
        "Landroid/os/Parcelable;",
        "originalTransactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "originalAmount",
        "",
        "originalAuthorizationCode",
        "",
        "originalTransmissionTime",
        "originalSTAN",
        "originalRRN",
        "originalAcquiringInstCode",
        "reversalReasonCode",
        "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
        "originalForwardingInstCode",
        "originalInterSwitchThreshold",
        "(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)V",
        "getOriginalAcquiringInstCode",
        "()Ljava/lang/String;",
        "getOriginalAmount",
        "()J",
        "getOriginalAuthorizationCode",
        "getOriginalForwardingInstCode",
        "setOriginalForwardingInstCode",
        "(Ljava/lang/String;)V",
        "getOriginalInterSwitchThreshold",
        "setOriginalInterSwitchThreshold",
        "(J)V",
        "getOriginalRRN",
        "getOriginalSTAN",
        "getOriginalTransactionType",
        "()Lcom/danbamitale/epmslib/entities/TransactionType;",
        "getOriginalTransmissionTime",
        "getReversalReasonCode",
        "()Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
        "setReversalReasonCode",
        "(Lcom/danbamitale/epmslib/utils/MessageReasonCode;)V",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final originalAcquiringInstCode:Ljava/lang/String;

.field private final originalAmount:J

.field private final originalAuthorizationCode:Ljava/lang/String;

.field private originalForwardingInstCode:Ljava/lang/String;

.field private originalInterSwitchThreshold:J

.field private final originalRRN:Ljava/lang/String;

.field private final originalSTAN:Ljava/lang/String;

.field private final originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

.field private final originalTransmissionTime:Ljava/lang/String;

.field private reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/OriginalDataElements$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)V
    .locals 1
    .param p1, "originalTransactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p2, "originalAmount"    # J
    .param p4, "originalAuthorizationCode"    # Ljava/lang/String;
    .param p5, "originalTransmissionTime"    # Ljava/lang/String;
    .param p6, "originalSTAN"    # Ljava/lang/String;
    .param p7, "originalRRN"    # Ljava/lang/String;
    .param p8, "originalAcquiringInstCode"    # Ljava/lang/String;
    .param p9, "reversalReasonCode"    # Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .param p10, "originalForwardingInstCode"    # Ljava/lang/String;
    .param p11, "originalInterSwitchThreshold"    # J

    const-string/jumbo v0, "originalTransactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalTransmissionTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalSTAN"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalRRN"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalAcquiringInstCode"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reversalReasonCode"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 95
    iput-wide p2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    .line 96
    iput-object p4, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    .line 100
    iput-object p8, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    .line 101
    iput-object p9, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    .line 102
    iput-object p10, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    .line 103
    iput-wide p11, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    .line 93
    return-void
.end method

.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 93
    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    move-wide v4, v2

    goto :goto_0

    .line 93
    :cond_0
    move-wide v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 96
    move-object v1, v6

    goto :goto_1

    .line 93
    :cond_1
    move-object/from16 v1, p4

    :goto_1
    and-int/lit8 v7, v0, 0x8

    const-string v8, ""

    if-eqz v7, :cond_2

    .line 97
    move-object v7, v8

    goto :goto_2

    .line 93
    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_3

    .line 98
    move-object v9, v8

    goto :goto_3

    .line 93
    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_4

    .line 99
    move-object v10, v8

    goto :goto_4

    .line 93
    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_5

    .line 100
    goto :goto_5

    .line 93
    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_6

    .line 101
    sget-object v11, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->CustomerCancellation:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    goto :goto_6

    .line 93
    :cond_6
    move-object/from16 v11, p9

    :goto_6
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_7

    .line 102
    goto :goto_7

    .line 93
    :cond_7
    move-object/from16 v6, p10

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 103
    goto :goto_8

    .line 93
    :cond_8
    move-wide/from16 v2, p11

    :goto_8
    move-object p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v4

    move-object/from16 p6, v1

    move-object/from16 p7, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v8

    move-object/from16 p11, v11

    move-object/from16 p12, v6

    move-wide/from16 p13, v2

    invoke-direct/range {p2 .. p14}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)V

    .line 104
    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/OriginalDataElements;Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;JILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 14

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-wide v12, v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    goto :goto_9

    :cond_9
    move-wide/from16 v12, p11

    :goto_9
    move-object p1, v2

    move-wide/from16 p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    invoke-virtual/range {p0 .. p12}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->copy(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 16

    const-string/jumbo v0, "originalTransactionType"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalTransmissionTime"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalSTAN"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalRRN"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalAcquiringInstCode"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reversalReasonCode"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-object v1, v0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    iget-wide v5, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    iget-wide v5, v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getOriginalAcquiringInstCode()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalAmount()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    return-wide v0
.end method

.method public final getOriginalAuthorizationCode()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalForwardingInstCode()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalInterSwitchThreshold()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    return-wide v0
.end method

.method public final getOriginalRRN()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalSTAN()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public final getOriginalTransmissionTime()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getReversalReasonCode()Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setOriginalForwardingInstCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalInterSwitchThreshold(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 103
    iput-wide p1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    return-void
.end method

.method public final setReversalReasonCode(Lcom/danbamitale/epmslib/utils/MessageReasonCode;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OriginalDataElements(originalTransactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalAuthorizationCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalTransmissionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalSTAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalRRN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalAcquiringInstCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reversalReasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalForwardingInstCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalInterSwitchThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAmount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAuthorizationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalTransmissionTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalSTAN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalRRN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalAcquiringInstCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->reversalReasonCode:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalForwardingInstCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->originalInterSwitchThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

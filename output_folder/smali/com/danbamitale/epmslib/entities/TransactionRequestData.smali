.class public final Lcom/danbamitale/epmslib/entities/TransactionRequestData;
.super Ljava/lang/Object;
.source "TransactionRequestData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000cB7\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fBe\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0013J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u0005H\u00c6\u0003J\t\u00107\u001a\u00020\u0008H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003Jm\u0010=\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001J\t\u0010>\u001a\u00020?H\u00d6\u0001J\u0013\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u00d6\u0003J\t\u0010D\u001a\u00020?H\u00d6\u0001J\t\u0010E\u001a\u00020\nH\u00d6\u0001J\u0019\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020?H\u00d6\u0001R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0015R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\u00a8\u0006K"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
        "Landroid/os/Parcelable;",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "amount",
        "",
        "otherAmount",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "RRN",
        "",
        "STAN",
        "(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;)V",
        "originalDataElements",
        "Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
        "(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V",
        "additionalTransParams",
        "Lcom/danbamitale/epmslib/entities/AdditionalTransParams;",
        "echoData",
        "(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V",
        "getRRN",
        "()Ljava/lang/String;",
        "setRRN",
        "(Ljava/lang/String;)V",
        "getSTAN",
        "setSTAN",
        "getAccountType",
        "()Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "getAdditionalTransParams",
        "()Lcom/danbamitale/epmslib/entities/AdditionalTransParams;",
        "getAmount",
        "()J",
        "setAmount",
        "(J)V",
        "getEchoData",
        "iswParameters",
        "Lcom/isw/iswclient/request/IswParameters;",
        "getIswParameters",
        "()Lcom/isw/iswclient/request/IswParameters;",
        "setIswParameters",
        "(Lcom/isw/iswclient/request/IswParameters;)V",
        "getOriginalDataElements",
        "()Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
        "getOtherAmount",
        "processingProperties",
        "Lcom/isw/iswclient/request/ProcessingProperties;",
        "getProcessingProperties",
        "()Lcom/isw/iswclient/request/ProcessingProperties;",
        "setProcessingProperties",
        "(Lcom/isw/iswclient/request/ProcessingProperties;)V",
        "getTransactionType",
        "()Lcom/danbamitale/epmslib/entities/TransactionType;",
        "component1",
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
            "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private RRN:Ljava/lang/String;

.field private STAN:Ljava/lang/String;

.field private final accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private final additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

.field private amount:J

.field private final echoData:Ljava/lang/String;

.field private iswParameters:Lcom/isw/iswclient/request/IswParameters;

.field private final originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

.field private final otherAmount:J

.field private processingProperties:Lcom/isw/iswclient/request/ProcessingProperties;

.field private final transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestData$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;)V
    .locals 12

    const-string/jumbo v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;J)V
    .locals 12

    const-string/jumbo v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJ)V
    .locals 13

    const-string/jumbo v0, "transactionType"

    move-object v12, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 14

    const-string/jumbo v0, "transactionType"

    move-object v12, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V
    .locals 15
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p2, "amount"    # J
    .param p4, "otherAmount"    # J
    .param p6, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p7, "originalDataElements"    # Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    const-string/jumbo v0, "transactionType"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 54
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

    .line 64
    return-void
.end method

.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    .line 48
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 51
    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto :goto_0

    .line 48
    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-object v8, v0

    goto :goto_1

    .line 48
    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 53
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_2

    .line 48
    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;)V
    .locals 14

    const-string/jumbo v0, "transactionType"

    move-object v12, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p2, "amount"    # J
    .param p4, "otherAmount"    # J
    .param p6, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p7, "RRN"    # Ljava/lang/String;
    .param p8, "STAN"    # Ljava/lang/String;

    const-string/jumbo v0, "transactionType"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v12}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 39
    and-int/lit8 v0, p9, 0x2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    move-wide v3, v1

    goto :goto_0

    .line 39
    :cond_0
    move-wide v3, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    .line 42
    goto :goto_1

    .line 39
    :cond_1
    move-wide v1, p4

    :goto_1
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_2

    .line 43
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 39
    :cond_2
    move-object v0, p6

    :goto_2
    and-int/lit8 v5, p9, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 44
    move-object v5, v6

    goto :goto_3

    .line 39
    :cond_3
    move-object v5, p7

    :goto_3
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_4

    .line 45
    goto :goto_4

    .line 39
    :cond_4
    move-object/from16 v6, p8

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v1

    move-object/from16 p8, v0

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    invoke-direct/range {p2 .. p10}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V
    .locals 1
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p2, "amount"    # J
    .param p4, "otherAmount"    # J
    .param p6, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p7, "RRN"    # Ljava/lang/String;
    .param p8, "STAN"    # Ljava/lang/String;
    .param p9, "additionalTransParams"    # Lcom/danbamitale/epmslib/entities/AdditionalTransParams;
    .param p10, "echoData"    # Ljava/lang/String;
    .param p11, "originalDataElements"    # Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    const-string/jumbo v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 26
    iput-wide p2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    .line 27
    iput-wide p4, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    .line 28
    iput-object p6, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 29
    iput-object p7, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    .line 31
    iput-object p9, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    .line 32
    iput-object p10, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    .line 33
    iput-object p11, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    .line 24
    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 27
    const-wide/16 v1, 0x0

    move-wide v7, v1

    goto :goto_0

    .line 24
    :cond_0
    move-wide/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 28
    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-object v9, v1

    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 29
    move-object v10, v2

    goto :goto_2

    .line 24
    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 30
    move-object v11, v2

    goto :goto_3

    .line 24
    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 31
    move-object v12, v2

    goto :goto_4

    .line 24
    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 32
    move-object v13, v2

    goto :goto_5

    .line 24
    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 33
    move-object v14, v2

    goto :goto_6

    .line 24
    :cond_6
    move-object/from16 v14, p11

    :goto_6
    move-object v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v3 .. v14}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

    .line 65
    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p11

    :goto_8
    move-object p1, v2

    move-wide p2, v3

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->copy(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    return-wide v0
.end method

.method public final component4()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/danbamitale/epmslib/entities/AdditionalTransParams;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    return-object v0
.end method

.method public final copy(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .locals 15

    const-string/jumbo v0, "transactionType"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-object v1, v0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

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
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    iget-wide v5, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    iget-wide v5, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    iget-object v1, v1, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final getAdditionalTransParams()Lcom/danbamitale/epmslib/entities/AdditionalTransParams;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    return-object v0
.end method

.method public final getAmount()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    return-wide v0
.end method

.method public final getEchoData()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    return-object v0
.end method

.method public final getIswParameters()Lcom/isw/iswclient/request/IswParameters;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->iswParameters:Lcom/isw/iswclient/request/IswParameters;

    return-object v0
.end method

.method public final getOriginalDataElements()Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    return-object v0
.end method

.method public final getOtherAmount()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    return-wide v0
.end method

.method public final getProcessingProperties()Lcom/isw/iswclient/request/ProcessingProperties;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->processingProperties:Lcom/isw/iswclient/request/ProcessingProperties;

    return-object v0
.end method

.method public final getRRN()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    return-object v0
.end method

.method public final getSTAN()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final setAmount(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 26
    iput-wide p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    return-void
.end method

.method public final setIswParameters(Lcom/isw/iswclient/request/IswParameters;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/isw/iswclient/request/IswParameters;

    .line 35
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->iswParameters:Lcom/isw/iswclient/request/IswParameters;

    return-void
.end method

.method public final setProcessingProperties(Lcom/isw/iswclient/request/ProcessingProperties;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/isw/iswclient/request/ProcessingProperties;

    .line 36
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->processingProperties:Lcom/isw/iswclient/request/ProcessingProperties;

    return-void
.end method

.method public final setRRN(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    return-void
.end method

.method public final setSTAN(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionRequestData(transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RRN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", additionalTransParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", echoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalDataElements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->amount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->otherAmount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->RRN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->STAN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->additionalTransParams:Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->echoData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->originalDataElements:Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void
.end method

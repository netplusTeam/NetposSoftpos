.class public final enum Lcom/danbamitale/epmslib/utils/MessageReasonCode;
.super Ljava/lang/Enum;
.source "MessageReasonCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/MessageReasonCode;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "CustomerCancellation",
        "UnSpecified",
        "CompletedPartially",
        "Timeout",
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
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/utils/MessageReasonCode;

.field public static final enum CompletedPartially:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

.field public static final enum CustomerCancellation:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

.field public static final enum Timeout:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

.field public static final enum UnSpecified:Lcom/danbamitale/epmslib/utils/MessageReasonCode;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    sget-object v1, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->CustomerCancellation:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->UnSpecified:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->CompletedPartially:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->Timeout:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const-string v1, "CustomerCancellation"

    const/4 v2, 0x0

    const-string v3, "4000"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->CustomerCancellation:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    new-instance v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const-string v1, "UnSpecified"

    const/4 v2, 0x1

    const-string v3, "4001"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->UnSpecified:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    new-instance v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const-string v1, "CompletedPartially"

    const/4 v2, 0x2

    const-string v3, "4004"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->CompletedPartially:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    new-instance v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    const-string v1, "Timeout"

    const/4 v2, 0x3

    const-string v3, "4021"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->Timeout:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-static {}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->$values()[Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->$VALUES:[Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/utils/MessageReasonCode;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->$VALUES:[Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->code:Ljava/lang/String;

    return-object v0
.end method

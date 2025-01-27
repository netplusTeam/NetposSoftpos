.class public final enum Lcom/danbamitale/epmslib/utils/CVMETHOD;
.super Ljava/lang/Enum;
.source "TransactionRoute.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/utils/CVMETHOD;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/CVMETHOD;",
        "",
        "(Ljava/lang/String;I)V",
        "OFFLINE_PLAINTEXT_PIN",
        "ONLINE_PIN",
        "OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE",
        "OFFLINE_ENCIPHERED_PIN",
        "OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE",
        "SIGNATURE",
        "NO_CVM_PERFORMED",
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
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum NO_CVM_PERFORMED:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum OFFLINE_ENCIPHERED_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum OFFLINE_PLAINTEXT_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

.field public static final enum SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/utils/CVMETHOD;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/danbamitale/epmslib/utils/CVMETHOD;

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/CVMETHOD;->NO_CVM_PERFORMED:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "OFFLINE_PLAINTEXT_PIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 11
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "ONLINE_PIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->ONLINE_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 12
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 13
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "OFFLINE_ENCIPHERED_PIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 14
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 15
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->SIGNATURE:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    .line 16
    new-instance v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    const-string v1, "NO_CVM_PERFORMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/CVMETHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->NO_CVM_PERFORMED:Lcom/danbamitale/epmslib/utils/CVMETHOD;

    invoke-static {}, Lcom/danbamitale/epmslib/utils/CVMETHOD;->$values()[Lcom/danbamitale/epmslib/utils/CVMETHOD;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->$VALUES:[Lcom/danbamitale/epmslib/utils/CVMETHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/CVMETHOD;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/utils/CVMETHOD;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/utils/CVMETHOD;->$VALUES:[Lcom/danbamitale/epmslib/utils/CVMETHOD;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/utils/CVMETHOD;

    return-object v0
.end method

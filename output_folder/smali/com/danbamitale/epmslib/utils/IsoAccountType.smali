.class public final enum Lcom/danbamitale/epmslib/utils/IsoAccountType;
.super Ljava/lang/Enum;
.source "IsoAccountType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "toString",
        "DEFAULT_UNSPECIFIED",
        "SAVINGS",
        "CURRENT",
        "CREDIT",
        "UNIVERSAL_ACCOUNT",
        "INVESTMENT_ACCOUNT",
        "BONUS_ACCOUNT",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final Companion:Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;

.field public static final enum DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field public static final enum UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/danbamitale/epmslib/utils/IsoAccountType;

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoAccountType;->BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "DEFAULT_UNSPECIFIED"

    const/4 v2, 0x0

    const-string v3, "00"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "SAVINGS"

    const/4 v2, 0x1

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "CURRENT"

    const/4 v2, 0x2

    const-string v3, "20"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "CREDIT"

    const/4 v2, 0x3

    const-string v3, "30"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 5
    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "UNIVERSAL_ACCOUNT"

    const/4 v2, 0x4

    const-string v3, "40"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "INVESTMENT_ACCOUNT"

    const/4 v2, 0x5

    const-string v3, "50"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v1, "BONUS_ACCOUNT"

    const/4 v2, 0x6

    const-string v3, "91"

    invoke-direct {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-static {}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->$values()[Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->$VALUES:[Lcom/danbamitale/epmslib/utils/IsoAccountType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->Companion:Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;

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

    iput-object p3, p0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->$VALUES:[Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 8
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

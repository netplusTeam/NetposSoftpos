.class public final enum Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;
.super Ljava/lang/Enum;
.source "DPrefsDefaultValue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/Object;)V",
        "getValue",
        "()Ljava/lang/Object;",
        "DEFAULT_VALUE_STRING",
        "DEFAULT_VALUE_INT",
        "DEFAULT_VALUE_BOOLEAN",
        "DEFAULT_VALUE_FLOAT",
        "DEFAULT_VALUE_LONG",
        "DEFAULT_VALUE_DOUBLE",
        "DPrefs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_BOOLEAN:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_DOUBLE:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_FLOAT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_INT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_LONG:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

.field public static final enum DEFAULT_VALUE_STRING:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method private static final synthetic $values()[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_STRING:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_INT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_BOOLEAN:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_FLOAT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_LONG:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_DOUBLE:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const-string v1, "DEFAULT_VALUE_STRING"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_STRING:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    .line 25
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const v1, -0x10f447

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "DEFAULT_VALUE_INT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_INT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    .line 30
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "DEFAULT_VALUE_BOOLEAN"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_BOOLEAN:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    .line 35
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const v1, -0x42333326    # -0.1000001f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "DEFAULT_VALUE_FLOAT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_FLOAT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    .line 40
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const-wide/32 v1, -0x10f447

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DEFAULT_VALUE_LONG"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_LONG:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    .line 45
    new-instance v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    const-wide v1, -0x40466664b8e73cbbL    # -0.1000001

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "DEFAULT_VALUE_DOUBLE"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_DOUBLE:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-static {}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->$values()[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    move-result-object v0

    sput-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->$VALUES:[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;
    .locals 1

    const-class v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    return-object v0
.end method

.method public static values()[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;
    .locals 1

    sget-object v0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->$VALUES:[Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->value:Ljava/lang/Object;

    return-object v0
.end method

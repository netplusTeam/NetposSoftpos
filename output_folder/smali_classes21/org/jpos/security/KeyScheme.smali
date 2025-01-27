.class public final enum Lorg/jpos/security/KeyScheme;
.super Ljava/lang/Enum;
.source "KeyScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/KeyScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/KeyScheme;

.field public static final enum R:Lorg/jpos/security/KeyScheme;

.field public static final enum S:Lorg/jpos/security/KeyScheme;

.field public static final enum T:Lorg/jpos/security/KeyScheme;

.field public static final enum U:Lorg/jpos/security/KeyScheme;

.field public static final enum X:Lorg/jpos/security/KeyScheme;

.field public static final enum Y:Lorg/jpos/security/KeyScheme;

.field public static final enum Z:Lorg/jpos/security/KeyScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 33
    new-instance v0, Lorg/jpos/security/KeyScheme;

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/security/KeyScheme;->Z:Lorg/jpos/security/KeyScheme;

    .line 38
    new-instance v1, Lorg/jpos/security/KeyScheme;

    const-string v3, "X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/security/KeyScheme;->X:Lorg/jpos/security/KeyScheme;

    .line 45
    new-instance v3, Lorg/jpos/security/KeyScheme;

    const-string v5, "U"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/security/KeyScheme;->U:Lorg/jpos/security/KeyScheme;

    .line 50
    new-instance v5, Lorg/jpos/security/KeyScheme;

    const-string v7, "Y"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/security/KeyScheme;->Y:Lorg/jpos/security/KeyScheme;

    .line 57
    new-instance v7, Lorg/jpos/security/KeyScheme;

    const-string v9, "T"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jpos/security/KeyScheme;->T:Lorg/jpos/security/KeyScheme;

    .line 70
    new-instance v9, Lorg/jpos/security/KeyScheme;

    const-string v11, "R"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jpos/security/KeyScheme;->R:Lorg/jpos/security/KeyScheme;

    .line 79
    new-instance v11, Lorg/jpos/security/KeyScheme;

    const-string v13, "S"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jpos/security/KeyScheme;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jpos/security/KeyScheme;->S:Lorg/jpos/security/KeyScheme;

    .line 26
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/jpos/security/KeyScheme;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/jpos/security/KeyScheme;->$VALUES:[Lorg/jpos/security/KeyScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/KeyScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/jpos/security/KeyScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/KeyScheme;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/KeyScheme;
    .locals 1

    .line 26
    sget-object v0, Lorg/jpos/security/KeyScheme;->$VALUES:[Lorg/jpos/security/KeyScheme;

    invoke-virtual {v0}, [Lorg/jpos/security/KeyScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/KeyScheme;

    return-object v0
.end method

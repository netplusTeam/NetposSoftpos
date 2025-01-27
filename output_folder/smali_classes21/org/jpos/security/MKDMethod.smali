.class public final enum Lorg/jpos/security/MKDMethod;
.super Ljava/lang/Enum;
.source "MKDMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/MKDMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/MKDMethod;

.field public static final enum OPTION_A:Lorg/jpos/security/MKDMethod;

.field public static final enum OPTION_B:Lorg/jpos/security/MKDMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lorg/jpos/security/MKDMethod;

    const-string v1, "OPTION_A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/security/MKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    .line 49
    new-instance v1, Lorg/jpos/security/MKDMethod;

    const-string v3, "OPTION_B"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/security/MKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/security/MKDMethod;->OPTION_B:Lorg/jpos/security/MKDMethod;

    .line 35
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jpos/security/MKDMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/jpos/security/MKDMethod;->$VALUES:[Lorg/jpos/security/MKDMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/MKDMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/jpos/security/MKDMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/MKDMethod;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/MKDMethod;
    .locals 1

    .line 35
    sget-object v0, Lorg/jpos/security/MKDMethod;->$VALUES:[Lorg/jpos/security/MKDMethod;

    invoke-virtual {v0}, [Lorg/jpos/security/MKDMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/MKDMethod;

    return-object v0
.end method

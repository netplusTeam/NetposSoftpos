.class public final enum Lorg/jpos/security/SKDMethod;
.super Ljava/lang/Enum;
.source "SKDMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/SKDMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/SKDMethod;

.field public static final enum AEPIS_V40:Lorg/jpos/security/SKDMethod;

.field public static final enum EMV2000_SKM:Lorg/jpos/security/SKDMethod;

.field public static final enum EMV_CSKD:Lorg/jpos/security/SKDMethod;

.field public static final enum MCHIP:Lorg/jpos/security/SKDMethod;

.field public static final enum VSDC:Lorg/jpos/security/SKDMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 41
    new-instance v0, Lorg/jpos/security/SKDMethod;

    const-string v1, "VSDC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/security/SKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/security/SKDMethod;->VSDC:Lorg/jpos/security/SKDMethod;

    .line 46
    new-instance v1, Lorg/jpos/security/SKDMethod;

    const-string v3, "MCHIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/security/SKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/security/SKDMethod;->MCHIP:Lorg/jpos/security/SKDMethod;

    .line 50
    new-instance v3, Lorg/jpos/security/SKDMethod;

    const-string v5, "AEPIS_V40"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/security/SKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/security/SKDMethod;->AEPIS_V40:Lorg/jpos/security/SKDMethod;

    .line 56
    new-instance v5, Lorg/jpos/security/SKDMethod;

    const-string v7, "EMV_CSKD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/security/SKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/security/SKDMethod;->EMV_CSKD:Lorg/jpos/security/SKDMethod;

    .line 62
    new-instance v7, Lorg/jpos/security/SKDMethod;

    const-string v9, "EMV2000_SKM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jpos/security/SKDMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jpos/security/SKDMethod;->EMV2000_SKM:Lorg/jpos/security/SKDMethod;

    .line 33
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jpos/security/SKDMethod;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jpos/security/SKDMethod;->$VALUES:[Lorg/jpos/security/SKDMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/SKDMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/jpos/security/SKDMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/SKDMethod;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/SKDMethod;
    .locals 1

    .line 33
    sget-object v0, Lorg/jpos/security/SKDMethod;->$VALUES:[Lorg/jpos/security/SKDMethod;

    invoke-virtual {v0}, [Lorg/jpos/security/SKDMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/SKDMethod;

    return-object v0
.end method

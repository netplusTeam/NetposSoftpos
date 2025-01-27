.class public final enum Lorg/jpos/emv/IssuerApplicationData$Format;
.super Ljava/lang/Enum;
.source "IssuerApplicationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/IssuerApplicationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/emv/IssuerApplicationData$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/emv/IssuerApplicationData$Format;

.field public static final enum EMV_FORMAT_A:Lorg/jpos/emv/IssuerApplicationData$Format;

.field public static final enum M_CHIP:Lorg/jpos/emv/IssuerApplicationData$Format;

.field public static final enum OTHER:Lorg/jpos/emv/IssuerApplicationData$Format;

.field public static final enum UNKNOWN:Lorg/jpos/emv/IssuerApplicationData$Format;

.field public static final enum VIS:Lorg/jpos/emv/IssuerApplicationData$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 242
    new-instance v0, Lorg/jpos/emv/IssuerApplicationData$Format;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/emv/IssuerApplicationData$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->UNKNOWN:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 243
    new-instance v1, Lorg/jpos/emv/IssuerApplicationData$Format;

    const-string v3, "OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/emv/IssuerApplicationData$Format;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/emv/IssuerApplicationData$Format;->OTHER:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 244
    new-instance v3, Lorg/jpos/emv/IssuerApplicationData$Format;

    const-string v5, "M_CHIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/emv/IssuerApplicationData$Format;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/emv/IssuerApplicationData$Format;->M_CHIP:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 245
    new-instance v5, Lorg/jpos/emv/IssuerApplicationData$Format;

    const-string v7, "EMV_FORMAT_A"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/emv/IssuerApplicationData$Format;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/emv/IssuerApplicationData$Format;->EMV_FORMAT_A:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 246
    new-instance v7, Lorg/jpos/emv/IssuerApplicationData$Format;

    const-string v9, "VIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jpos/emv/IssuerApplicationData$Format;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jpos/emv/IssuerApplicationData$Format;->VIS:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 241
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jpos/emv/IssuerApplicationData$Format;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jpos/emv/IssuerApplicationData$Format;->$VALUES:[Lorg/jpos/emv/IssuerApplicationData$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/emv/IssuerApplicationData$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 241
    const-class v0, Lorg/jpos/emv/IssuerApplicationData$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/IssuerApplicationData$Format;

    return-object v0
.end method

.method public static values()[Lorg/jpos/emv/IssuerApplicationData$Format;
    .locals 1

    .line 241
    sget-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->$VALUES:[Lorg/jpos/emv/IssuerApplicationData$Format;

    invoke-virtual {v0}, [Lorg/jpos/emv/IssuerApplicationData$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/emv/IssuerApplicationData$Format;

    return-object v0
.end method

.class public final enum Lcom/itextpdf/layout/borders/Border$Side;
.super Ljava/lang/Enum;
.source "Border.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/borders/Border;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/borders/Border$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/borders/Border$Side;

.field public static final enum BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

.field public static final enum LEFT:Lcom/itextpdf/layout/borders/Border$Side;

.field public static final enum NONE:Lcom/itextpdf/layout/borders/Border$Side;

.field public static final enum RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

.field public static final enum TOP:Lcom/itextpdf/layout/borders/Border$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 441
    new-instance v0, Lcom/itextpdf/layout/borders/Border$Side;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/borders/Border$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    new-instance v1, Lcom/itextpdf/layout/borders/Border$Side;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/borders/Border$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    new-instance v3, Lcom/itextpdf/layout/borders/Border$Side;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/borders/Border$Side;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    new-instance v5, Lcom/itextpdf/layout/borders/Border$Side;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/borders/Border$Side;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    new-instance v7, Lcom/itextpdf/layout/borders/Border$Side;

    const-string v9, "LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/borders/Border$Side;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    .line 440
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/itextpdf/layout/borders/Border$Side;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/itextpdf/layout/borders/Border$Side;->$VALUES:[Lcom/itextpdf/layout/borders/Border$Side;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/borders/Border$Side;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 440
    const-class v0, Lcom/itextpdf/layout/borders/Border$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border$Side;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/borders/Border$Side;
    .locals 1

    .line 440
    sget-object v0, Lcom/itextpdf/layout/borders/Border$Side;->$VALUES:[Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/borders/Border$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/borders/Border$Side;

    return-object v0
.end method

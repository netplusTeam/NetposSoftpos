.class public final enum Lorg/jdom2/output/Format$TextMode;
.super Ljava/lang/Enum;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/output/Format$TextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/output/Format$TextMode;

.field public static final enum NORMALIZE:Lorg/jdom2/output/Format$TextMode;

.field public static final enum PRESERVE:Lorg/jdom2/output/Format$TextMode;

.field public static final enum TRIM:Lorg/jdom2/output/Format$TextMode;

.field public static final enum TRIM_FULL_WHITE:Lorg/jdom2/output/Format$TextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1020
    new-instance v0, Lorg/jdom2/output/Format$TextMode;

    const-string v1, "PRESERVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdom2/output/Format$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    .line 1025
    new-instance v1, Lorg/jdom2/output/Format$TextMode;

    const-string v3, "TRIM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jdom2/output/Format$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jdom2/output/Format$TextMode;->TRIM:Lorg/jdom2/output/Format$TextMode;

    .line 1032
    new-instance v3, Lorg/jdom2/output/Format$TextMode;

    const-string v5, "NORMALIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jdom2/output/Format$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jdom2/output/Format$TextMode;->NORMALIZE:Lorg/jdom2/output/Format$TextMode;

    .line 1038
    new-instance v5, Lorg/jdom2/output/Format$TextMode;

    const-string v7, "TRIM_FULL_WHITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jdom2/output/Format$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jdom2/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom2/output/Format$TextMode;

    .line 1016
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jdom2/output/Format$TextMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jdom2/output/Format$TextMode;->$VALUES:[Lorg/jdom2/output/Format$TextMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/output/Format$TextMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1016
    const-class v0, Lorg/jdom2/output/Format$TextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/output/Format$TextMode;
    .locals 1

    .line 1016
    sget-object v0, Lorg/jdom2/output/Format$TextMode;->$VALUES:[Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0}, [Lorg/jdom2/output/Format$TextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

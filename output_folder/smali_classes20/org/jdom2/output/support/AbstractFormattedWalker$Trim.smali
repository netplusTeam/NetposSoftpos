.class public final enum Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
.super Ljava/lang/Enum;
.source "AbstractFormattedWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/support/AbstractFormattedWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Trim"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

.field public static final enum BOTH:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

.field public static final enum COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

.field public static final enum LEFT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

.field public static final enum NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

.field public static final enum RIGHT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 107
    new-instance v0, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->LEFT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 109
    new-instance v1, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->RIGHT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 111
    new-instance v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->BOTH:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 113
    new-instance v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v7, "COMPACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 115
    new-instance v7, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 105
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->$VALUES:[Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 105
    const-class v0, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    .locals 1

    .line 105
    sget-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->$VALUES:[Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {v0}, [Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    return-object v0
.end method

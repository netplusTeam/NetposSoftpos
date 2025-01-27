.class final Lorg/jdom2/output/Format$EscapeStrategy7Bits;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lorg/jdom2/output/EscapeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EscapeStrategy7Bits"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/output/Format$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jdom2/output/Format$1;

    .line 131
    invoke-direct {p0}, Lorg/jdom2/output/Format$EscapeStrategy7Bits;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEscape(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 134
    ushr-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

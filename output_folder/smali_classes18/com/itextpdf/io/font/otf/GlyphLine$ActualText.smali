.class public Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
.super Ljava/lang/Object;
.source "GlyphLine.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/GlyphLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActualText"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46ea152dc2747626L


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    .line 464
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 468
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 469
    return v0

    .line 471
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    .line 475
    .local v2, "other":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 472
    .end local v2    # "other":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

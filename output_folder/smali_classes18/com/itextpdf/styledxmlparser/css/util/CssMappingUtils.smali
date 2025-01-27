.class public final Lcom/itextpdf/styledxmlparser/css/util/CssMappingUtils;
.super Ljava/lang/Object;
.source "CssMappingUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static parseBackgroundRepeat(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->parseBackgroundRepeat(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;
.super Ljava/lang/Object;
.source "SvgProcessorResult.java"

# interfaces
.implements Lcom/itextpdf/svg/processors/ISvgProcessorResult;


# instance fields
.field private final context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

.field private final fontProvider:Lcom/itextpdf/layout/font/FontProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

.field private final tempFonts:Lcom/itextpdf/layout/font/FontSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V
    .locals 2
    .param p2, "root"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p3, "fontProvider"    # Lcom/itextpdf/layout/font/FontProvider;
    .param p4, "tempFonts"    # Lcom/itextpdf/layout/font/FontSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            "Lcom/itextpdf/layout/font/FontProvider;",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    .local p1, "namedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->namedObjects:Ljava/util/Map;

    .line 88
    iput-object p2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 89
    iput-object p3, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 90
    iput-object p4, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 91
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    new-instance v1, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;-><init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 1
    .param p2, "root"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p3, "context"    # Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            "Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "namedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->namedObjects:Ljava/util/Map;

    .line 103
    iput-object p2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 104
    iput-object p3, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 105
    invoke-virtual {p3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 106
    invoke-virtual {p3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    .line 143
    .local v1, "otherResult":Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;
    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 140
    .end local v1    # "otherResult":Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;
    :cond_2
    :goto_0
    return v0
.end method

.method public getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getNamedObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->namedObjects:Ljava/util/Map;

    return-object v0
.end method

.method public getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    return v0
.end method

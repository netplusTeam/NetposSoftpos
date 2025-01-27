.class Lcom/itextpdf/layout/renderer/TextRenderer$1;
.super Ljava/lang/Object;
.source "TextRenderer.java"

# interfaces
.implements Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/layout/renderer/TextRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/layout/renderer/TextRenderer;


# direct methods
.method constructor <init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 953
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer$1;->this$0:Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 956
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->access$000(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

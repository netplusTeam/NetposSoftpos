.class Lcom/itextpdf/layout/renderer/ListRenderer$1;
.super Lcom/itextpdf/layout/renderer/TextRenderer;
.source "ListRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/layout/renderer/ListRenderer;->createListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/layout/renderer/ListRenderer;

.field final synthetic val$constantFont:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itextpdf/layout/renderer/ListRenderer;Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/layout/renderer/ListRenderer;
    .param p2, "textElement"    # Lcom/itextpdf/layout/element/Text;

    .line 210
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ListRenderer$1;->this$0:Lcom/itextpdf/layout/renderer/ListRenderer;

    iput-object p3, p0, Lcom/itextpdf/layout/renderer/ListRenderer$1;->val$constantFont:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 214
    const/16 v0, 0x14

    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListRenderer$1;->val$constantFont:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer$1;->setProperty(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    :goto_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 218
    return-void
.end method

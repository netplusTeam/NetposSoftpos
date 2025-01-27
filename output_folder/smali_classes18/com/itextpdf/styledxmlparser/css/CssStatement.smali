.class public abstract Lcom/itextpdf/styledxmlparser/css/CssStatement;
.super Ljava/lang/Object;
.source "CssStatement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

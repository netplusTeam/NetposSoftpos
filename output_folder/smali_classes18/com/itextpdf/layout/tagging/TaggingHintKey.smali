.class public final Lcom/itextpdf/layout/tagging/TaggingHintKey;
.super Ljava/lang/Object;
.source "TaggingHintKey.java"


# instance fields
.field private elem:Lcom/itextpdf/layout/tagging/IAccessibleElement;

.field private elementBasedFinishingOnly:Z

.field private isArtifact:Z

.field private isFinished:Z

.field private overriddenRole:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itextpdf/layout/tagging/IAccessibleElement;Z)V
    .locals 0
    .param p1, "elem"    # Lcom/itextpdf/layout/tagging/IAccessibleElement;
    .param p2, "createdElementBased"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->elem:Lcom/itextpdf/layout/tagging/IAccessibleElement;

    .line 54
    iput-boolean p2, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->elementBasedFinishingOnly:Z

    .line 55
    return-void
.end method


# virtual methods
.method public getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->elem:Lcom/itextpdf/layout/tagging/IAccessibleElement;

    return-object v0
.end method

.method getOverriddenRole()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->overriddenRole:Ljava/lang/String;

    return-object v0
.end method

.method isArtifact()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact:Z

    return v0
.end method

.method isElementBasedFinishingOnly()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->elementBasedFinishingOnly:Z

    return v0
.end method

.method isFinished()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished:Z

    return v0
.end method

.method setArtifact()V
    .locals 1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact:Z

    .line 75
    return-void
.end method

.method setFinished()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished:Z

    .line 67
    return-void
.end method

.method setOverriddenRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "overriddenRole"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;->overriddenRole:Ljava/lang/String;

    .line 83
    return-void
.end method

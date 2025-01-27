.class Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$AttributesStub;
.super Ljava/lang/Object;
.source "CssPseudoElementNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributesStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$1;

    .line 142
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$AttributesStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/styledxmlparser/node/IAttribute;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.class final Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;
.super Ljava/lang/Object;
.source "AbstractXPathCompiled.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamespaceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/jdom2/Namespace;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;

    .line 82
    invoke-direct {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Namespace;

    move-object v1, p2

    check-cast v1, Lorg/jdom2/Namespace;

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;->compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I
    .locals 2
    .param p1, "ns1"    # Lorg/jdom2/Namespace;
    .param p2, "ns2"    # Lorg/jdom2/Namespace;

    .line 85
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

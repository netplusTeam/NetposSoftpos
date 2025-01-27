.class final Lorg/jdom2/AttributeList$1;
.super Ljava/lang/Object;
.source "AttributeList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/AttributeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/jdom2/Attribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    move-object v1, p2

    check-cast v1, Lorg/jdom2/Attribute;

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/AttributeList$1;->compare(Lorg/jdom2/Attribute;Lorg/jdom2/Attribute;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jdom2/Attribute;Lorg/jdom2/Attribute;)I
    .locals 3
    .param p1, "a1"    # Lorg/jdom2/Attribute;
    .param p2, "a2"    # Lorg/jdom2/Attribute;

    .line 94
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "pcomp":I
    if-eqz v0, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

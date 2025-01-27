.class final Lorg/jdom2/util/NamespaceStack$1;
.super Ljava/lang/Object;
.source "NamespaceStack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/util/NamespaceStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Namespace;

    move-object v1, p2

    check-cast v1, Lorg/jdom2/Namespace;

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/util/NamespaceStack$1;->compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I
    .locals 2
    .param p1, "ns1"    # Lorg/jdom2/Namespace;
    .param p2, "ns2"    # Lorg/jdom2/Namespace;

    .line 237
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

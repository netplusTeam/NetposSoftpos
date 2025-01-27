.class Ljavassist/SerialVersionUID$1;
.super Ljava/lang/Object;
.source "SerialVersionUID.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/SerialVersionUID;->calculateDefault(Ljavassist/CtClass;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavassist/CtField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Ljavassist/CtField;

    check-cast p2, Ljavassist/CtField;

    invoke-virtual {p0, p1, p2}, Ljavassist/SerialVersionUID$1;->compare(Ljavassist/CtField;Ljavassist/CtField;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavassist/CtField;Ljavassist/CtField;)I
    .locals 2
    .param p1, "field1"    # Ljavassist/CtField;
    .param p2, "field2"    # Ljavassist/CtField;

    .line 119
    invoke-virtual {p1}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

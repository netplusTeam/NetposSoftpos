.class Ljavassist/SerialVersionUID$2;
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
        "Ljavassist/CtConstructor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Ljavassist/CtConstructor;

    check-cast p2, Ljavassist/CtConstructor;

    invoke-virtual {p0, p1, p2}, Ljavassist/SerialVersionUID$2;->compare(Ljavassist/CtConstructor;Ljavassist/CtConstructor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavassist/CtConstructor;Ljavassist/CtConstructor;)I
    .locals 2
    .param p1, "c1"    # Ljavassist/CtConstructor;
    .param p2, "c2"    # Ljavassist/CtConstructor;

    .line 146
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

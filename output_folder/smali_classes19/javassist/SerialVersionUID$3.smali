.class Ljavassist/SerialVersionUID$3;
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
        "Ljavassist/CtMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 163
    check-cast p1, Ljavassist/CtMethod;

    check-cast p2, Ljavassist/CtMethod;

    invoke-virtual {p0, p1, p2}, Ljavassist/SerialVersionUID$3;->compare(Ljavassist/CtMethod;Ljavassist/CtMethod;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavassist/CtMethod;Ljavassist/CtMethod;)I
    .locals 3
    .param p1, "m1"    # Ljavassist/CtMethod;
    .param p2, "m2"    # Ljavassist/CtMethod;

    .line 166
    invoke-virtual {p1}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 171
    :cond_0
    return v0
.end method

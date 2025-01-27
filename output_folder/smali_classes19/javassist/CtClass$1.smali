.class Ljavassist/CtClass$1;
.super Ljavassist/ClassMap;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/CtClass;->getRefClasses()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Ljavassist/CtClass;


# direct methods
.method constructor <init>(Ljavassist/CtClass;)V
    .locals 0
    .param p1, "this$0"    # Ljavassist/CtClass;

    .line 530
    iput-object p1, p0, Ljavassist/CtClass$1;->this$0:Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/ClassMap;-><init>()V

    return-void
.end method


# virtual methods
.method public fix(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 545
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 530
    invoke-virtual {p0, p1}, Ljavassist/CtClass$1;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "jvmClassName"    # Ljava/lang/Object;

    .line 539
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljavassist/CtClass$1;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "n":Ljava/lang/String;
    invoke-virtual {p0, v0, v0}, Ljavassist/CtClass$1;->put0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 530
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljavassist/CtClass$1;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 535
    invoke-virtual {p0, p1, p2}, Ljavassist/CtClass$1;->put0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

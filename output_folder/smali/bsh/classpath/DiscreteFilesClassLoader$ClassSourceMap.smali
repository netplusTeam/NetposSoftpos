.class public Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;
.super Ljava/util/HashMap;
.source "DiscreteFilesClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/DiscreteFilesClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSourceMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath$ClassSource;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Lbsh/classpath/BshClassPath$ClassSource;

    .line 54
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

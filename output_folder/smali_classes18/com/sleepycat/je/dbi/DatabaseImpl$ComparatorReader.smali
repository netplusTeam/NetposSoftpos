.class Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComparatorReader"
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private final comparatorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final isClass:Z


# direct methods
.method constructor <init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "comparatorBytes"    # [B
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1995
    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparatorClass:Ljava/lang/Class;

    .line 1996
    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparator:Ljava/util/Comparator;

    .line 1997
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass:Z

    .line 1998
    return-void

    .line 2002
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->bytesToObject([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2005
    .local v0, "obj":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2006
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2008
    .local v1, "className":Ljava/lang/String;
    nop

    .line 2009
    :try_start_0
    invoke-static {v1, p3}, Lcom/sleepycat/util/ClassResolver;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparatorClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2013
    nop

    .line 2014
    invoke-static {v2, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->instantiateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparator:Ljava/util/Comparator;

    .line 2015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass:Z

    .line 2016
    return-void

    .line 2010
    :catch_0
    move-exception v2

    .line 2011
    .local v2, "ee":Ljava/lang/ClassNotFoundException;
    nop

    .line 2012
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 2020
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "ee":Ljava/lang/ClassNotFoundException;
    :cond_1
    instance-of v3, v0, Ljava/util/Comparator;

    if-eqz v3, :cond_2

    .line 2021
    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparatorClass:Ljava/lang/Class;

    .line 2022
    move-object v2, v0

    check-cast v2, Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparator:Ljava/util/Comparator;

    .line 2023
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass:Z

    .line 2024
    return-void

    .line 2028
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected class name or Comparator instance, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2030
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2029
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method getComparatorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;"
        }
    .end annotation

    .line 2038
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->comparatorClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isClass()Z
    .locals 1

    .line 2034
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass:Z

    return v0
.end method

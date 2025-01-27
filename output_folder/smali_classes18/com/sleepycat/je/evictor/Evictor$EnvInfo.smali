.class Lcom/sleepycat/je/evictor/Evictor$EnvInfo;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnvInfo"
.end annotation


# instance fields
.field env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field ins:Lcom/sleepycat/je/dbi/INList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/evictor/Evictor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/evictor/Evictor$1;

    .line 1333
    invoke-direct {p0}, Lcom/sleepycat/je/evictor/Evictor$EnvInfo;-><init>()V

    return-void
.end method

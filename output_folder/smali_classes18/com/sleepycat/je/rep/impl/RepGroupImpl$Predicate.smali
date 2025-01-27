.class abstract Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
.super Ljava/lang/Object;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Predicate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z
.end method

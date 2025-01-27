.class public abstract Lcom/sleepycat/je/tree/INTargetRep;
.super Lcom/sleepycat/je/tree/INArrayRep;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/INTargetRep$None;,
        Lcom/sleepycat/je/tree/INTargetRep$Sparse;,
        Lcom/sleepycat/je/tree/INTargetRep$Default;,
        Lcom/sleepycat/je/tree/INTargetRep$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/tree/INArrayRep<",
        "Lcom/sleepycat/je/tree/INTargetRep;",
        "Lcom/sleepycat/je/tree/INTargetRep$Type;",
        "Lcom/sleepycat/je/tree/Node;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/sleepycat/je/tree/INTargetRep$None;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/sleepycat/je/tree/INTargetRep$None;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/INTargetRep$None;-><init>(Lcom/sleepycat/je/tree/INTargetRep$1;)V

    sput-object v0, Lcom/sleepycat/je/tree/INTargetRep;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INArrayRep;-><init>()V

    .line 46
    return-void
.end method

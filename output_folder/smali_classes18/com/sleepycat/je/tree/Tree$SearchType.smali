.class public Lcom/sleepycat/je/tree/Tree$SearchType;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchType"
.end annotation


# static fields
.field public static final LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

.field public static final NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;

.field public static final RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/sleepycat/je/tree/Tree$SearchType;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/Tree$SearchType;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->NORMAL:Lcom/sleepycat/je/tree/Tree$SearchType;

    .line 175
    new-instance v0, Lcom/sleepycat/je/tree/Tree$SearchType;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/Tree$SearchType;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->LEFT:Lcom/sleepycat/je/tree/Tree$SearchType;

    .line 176
    new-instance v0, Lcom/sleepycat/je/tree/Tree$SearchType;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/Tree$SearchType;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/Tree$SearchType;->RIGHT:Lcom/sleepycat/je/tree/Tree$SearchType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.class public Lcom/sleepycat/je/statcap/StatManager$SDef;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/statcap/StatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDef"
.end annotation


# instance fields
.field private final definition:Lcom/sleepycat/je/utilint/StatDefinition;

.field private final groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "groupname"    # Ljava/lang/String;
    .param p2, "sd"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 185
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->groupName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 179
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/statcap/StatManager$SDef;)Lcom/sleepycat/je/utilint/StatDefinition;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 179
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    return-object v0
.end method


# virtual methods
.method public getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$SDef;->groupName:Ljava/lang/String;

    return-object v0
.end method

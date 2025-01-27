.class public interface abstract Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;
.super Ljava/lang/Object;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatDefs"
.end annotation


# static fields
.field public static final ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final APPLICATION_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final APPLICATION_PERMITS_DESC:Ljava/lang/String; = "Number of permits that have been currently reserved by the application and are therefor unavailable to housekeeping tasks."

.field public static final APPLICATION_PERMITS_NAME:Ljava/lang/String; = "nApplicationPermits"

.field public static final DEFICIT_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final DEFICIT_PERMITS_DESC:Ljava/lang/String; = "Number of deficit permits that have been currently granted to housekeeping tasks in the absence of real permits."

.field public static final DEFICIT_PERMITS_NAME:Ljava/lang/String; = "nDeficitPermits"

.field public static final GROUP_DESC:Ljava/lang/String; = "Task coordination ensures that the execution of background  housekeeping tasks is coordinated, so they do not all execute  at once."

.field public static final GROUP_NAME:Ljava/lang/String; = "TaskCoordinator"

.field public static final REAL_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REAL_PERMITS_DESC:Ljava/lang/String; = "Number of real permits that have been currently granted to housekeeping tasks."

.field public static final REAL_PERMITS_NAME:Ljava/lang/String; = "nRealPermits"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 855
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRealPermits"

    const-string v2, "Number of real permits that have been currently granted to housekeeping tasks."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->REAL_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 862
    new-instance v1, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v2, "nDeficitPermits"

    const-string v3, "Number of deficit permits that have been currently granted to housekeeping tasks in the absence of real permits."

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->DEFICIT_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 870
    new-instance v2, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v3, "nApplicationPermits"

    const-string v4, "Number of permits that have been currently reserved by the application and are therefor unavailable to housekeeping tasks."

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->APPLICATION_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 875
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

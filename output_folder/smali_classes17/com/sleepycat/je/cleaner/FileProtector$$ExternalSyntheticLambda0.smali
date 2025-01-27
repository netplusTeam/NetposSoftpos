.class public final synthetic Lcom/sleepycat/je/cleaner/FileProtector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileProtector$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/cleaner/FileProtector;->lambda$getLogSizeStats$0(Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

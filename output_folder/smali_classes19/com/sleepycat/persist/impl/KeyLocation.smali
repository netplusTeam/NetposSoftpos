.class Lcom/sleepycat/persist/impl/KeyLocation;
.super Ljava/lang/Object;
.source "KeyLocation.java"


# instance fields
.field format:Lcom/sleepycat/persist/impl/Format;

.field input:Lcom/sleepycat/persist/impl/RecordInput;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    .line 29
    iput-object p2, p0, Lcom/sleepycat/persist/impl/KeyLocation;->format:Lcom/sleepycat/persist/impl/Format;

    .line 30
    return-void
.end method

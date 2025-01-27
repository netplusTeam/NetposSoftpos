.class public Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
.super Ljava/lang/Object;
.source "SnapshotManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SnapshotManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogFileInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;
    }
.end annotation


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final copyStartTimeMs:J

.field private final isCopied:Z

.field private final nodeName:Ljava/lang/String;

.field private final snapshot:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sleepycat/json_simple/JsonObject;)V
    .locals 2
    .param p1, "json"    # Lcom/sleepycat/json_simple/JsonObject;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {p1, v0}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    .line 810
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->isCopied:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$100(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    .line 811
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->copyStartTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$200(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    .line 812
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {p1, v0}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    .line 813
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {p1, v0}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    .line 814
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->validate()V

    .line 815
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/sleepycat/je/dbi/SnapshotManifest;)V
    .locals 1
    .param p1, "checksum"    # Ljava/lang/String;
    .param p2, "copyStartTimeMs"    # J
    .param p4, "manifest"    # Lcom/sleepycat/je/dbi/SnapshotManifest;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    .line 796
    iput-wide p2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    .line 797
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    .line 798
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    .line 799
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->validate()V

    .line 800
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const-string v0, "0"

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    .line 782
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    .line 783
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    .line 784
    iput-object p2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    .line 785
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->validate()V

    .line 786
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "checksum"    # Ljava/lang/String;
    .param p2, "isCopied"    # Z
    .param p3, "copyStartTimeMs"    # J
    .param p5, "snapshot"    # Ljava/lang/String;
    .param p6, "nodeName"    # Ljava/lang/String;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    .line 767
    iput-boolean p2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    .line 768
    iput-wide p3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    .line 769
    iput-object p5, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    .line 770
    iput-object p6, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    .line 771
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->validate()V

    .line 772
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 927
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 928
    return v0

    .line 930
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 931
    return v2

    .line 933
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 934
    .local v1, "other":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    iget-boolean v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    .line 937
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    .line 938
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 934
    :goto_0
    return v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyStartTimeMs()J
    .locals 2

    .line 862
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    return-wide v0
.end method

.method public getIsCopied()Z
    .locals 1

    .line 858
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 943
    const/16 v0, 0x47

    .line 944
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x49

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 945
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x49

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 946
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x49

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 947
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x49

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 948
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x49

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 949
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method tallyChecksum(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 907
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$400(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 908
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$500(Ljava/security/MessageDigest;Z)V

    .line 909
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$600(Ljava/security/MessageDigest;J)V

    .line 910
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$400(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$400(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method toJsonMap()Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 823
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 825
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->isCopied:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->copyStartTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileInfo[checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCopied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " copyStartTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " snapshot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nodeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 5

    .line 880
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    const-string v1, "checksum"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$300(Ljava/lang/String;Ljava/lang/Object;)V

    .line 881
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->checksum:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checksum for copied entry must not be \"0\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    .line 892
    iget-boolean v4, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->isCopied:Z

    if-eqz v4, :cond_3

    .line 893
    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    .line 894
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "copyStartTimeMs for copied entry must not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    const-string/jumbo v1, "snapshot"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$300(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->SNAPSHOT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 903
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->nodeName:Ljava/lang/String;

    const-string v1, "nodeName"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->access$300(Ljava/lang/String;Ljava/lang/Object;)V

    .line 904
    return-void

    .line 900
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot name is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->snapshot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyStartTimeMs must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->copyStartTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

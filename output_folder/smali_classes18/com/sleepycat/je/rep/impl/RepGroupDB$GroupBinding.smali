.class public Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Lcom/sleepycat/je/rep/impl/RepGroupImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final writeFormatVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1046
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    .line 1048
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "writeFormatVersion"    # I

    .line 1054
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    .line 1055
    if-ltz p1, :cond_0

    .line 1060
    iput p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    .line 1061
    return-void

    .line 1056
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFormatVersion must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 10
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 1065
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    if-gez v0, :cond_1

    .line 1069
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 1071
    .local v3, "uuid":Ljava/util/UUID;
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v8

    .line 1072
    .local v8, "formatVersion":I
    new-instance v9, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1076
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v5

    .line 1077
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v6

    const/4 v1, 0x3

    if-ge v8, v1, :cond_0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MIN_FORMAT_VERSION_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    move-object v7, v1

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->parseJEVersion(Ljava/lang/String;)Lcom/sleepycat/je/JEVersion;

    move-result-object v1

    move-object v7, v1

    :goto_0
    move-object v1, v9

    move-object v2, v0

    move v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Ljava/util/UUID;IIILcom/sleepycat/je/JEVersion;)V

    .line 1072
    return-object v9

    .line 1066
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v8    # "formatVersion":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GroupBinding not created for read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "group"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1085
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    if-ltz v0, :cond_1

    .line 1089
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1090
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1091
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1092
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1093
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getChangeVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1094
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNodeIdSequence()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1095
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->writeFormatVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1096
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMinJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->jeVersionString(Lcom/sleepycat/je/JEVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1098
    :cond_0
    return-void

    .line 1086
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GroupBinding not created for write"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 1038
    check-cast p1, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->objectToEntry(Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method

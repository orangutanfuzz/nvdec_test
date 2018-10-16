TARGET := nvdec_test
OBJECTS := nvdec_test.o

NRO_ICON		:=	icon.jpg
NRO_NAME		:=	TVMR Test Application
NRO_DEVELOPER		:=	orangutanfuzz
NRO_VERSION		:= 	0.0.2

all: $(TARGET).nro $(TARGET).nso

clean:
	rm -f *.o *.nro *.nso *.so

# include libtransistor rules
ifndef LIBTRANSISTOR_HOME
    $(error LIBTRANSISTOR_HOME must be set)
endif
include $(LIBTRANSISTOR_HOME)/libtransistor.mk

EX_LIBS := -Llib -landroid -lnvcore -lnvcore_bin -lnvmm -lnvmm_bin
EX_OBJS := symbols/nvn.o
EX_LD_FLAGS := --warn-unresolved-symbols --error-limit 999999999

$(TARGET).nro.so: $(OBJECTS) $(LIBTRANSITOR_NRO_LIB) $(LIBTRANSISTOR_COMMON_LIBS)
	$(LD) $(EX_LD_FLAGS) $(LD_FLAGS) -o $@ $(EX_OBJS) $(OBJECTS) $(EX_LIBS) $(LIBTRANSISTOR_NRO_LDFLAGS)

$(TARGET).nso.so: $(OBJECTS) $(LIBTRANSITOR_NSO_LIB) $(LIBTRANSISTOR_COMMON_LIBS)
	$(LD) $(EX_LD_FLAGS) $(LD_FLAGS) -o $@ $(EX_OBJS) $(OBJECTS) $(EX_LIBS) $(LIBTRANSISTOR_NSO_LDFLAGS)

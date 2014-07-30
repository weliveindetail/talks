#include <string>

// ----------------------------------------------------------------------------

namespace BasicExample
{

// ----------------------------------------------------------------------------
  
class IHardware
{
public:
  virtual const char *getBrand() const = 0;
};
  
class IFactory
{
public:
  virtual const IHardware *createHardware() const = 0;
};

// ----------------------------------------------------------------------------

class MaschineController : public IHardware
{
public:
  // implements IHardware
  const char *getBrand() const override
  {
    return "Maschine";
  }

  // Maschine specific queries
  virtual bool isMK2() const { return false; }
  virtual bool isMikro() const { return false; }
  virtual bool isStudio() const { return false; }
};

// ----------------------------------------------------------------------------

class TraktorKontrol : public IHardware
{
public:
  // implements IHardware
  const char *getBrand() const override
  {
    return "Traktor";
  }
  
  // Traktor specific queries
  virtual bool isX1() const { return false; }
  virtual bool isS2() const { return false; }
  virtual bool isS4() const { return false; }
};

// ----------------------------------------------------------------------------

class MaschineFactory : public IFactory
{
public:
  MaschineController *createHardware() const override
  {
    return new MaschineController;
  }
};

// ----------------------------------------------------------------------------

class TraktorFactory : public IFactory
{
public:
  TraktorKontrol *createHardware() const override
  {
    return new TraktorKontrol;
  }
};

// ----------------------------------------------------------------------------

}
